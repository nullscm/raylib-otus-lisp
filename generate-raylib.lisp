(import (file xml)(scheme file))

;; filter numbers from string
(define (digit? x) (<= #\0 x #\9))
(define (number-filter lst) (cond ((null? lst) lst) ((or (eq? #\space (car lst)) (digit? (car lst))) (cons (car lst) (number-filter (cdr lst)))) (else (number-filter (cdr lst)))))
(define filter-numbers (lambda (lst) (list->string (number-filter (string->list lst)))))

;; split string by #\space
(define (tokenize l) (let loop ((t '()) (l l)) (if (pair? l) (let ((c (car l))) (if (char=? c #\space) (cons (reverse t) (loop '() (cdr l))) (loop (cons (car l) t) (cdr l)))) (if (null? t) '() (list (reverse t))))))
(define (string-split s) (map list->string (tokenize (string->list s))))

;; download raylib_api.xml
(if (not (file-exists? "raylib_api.xml")) (syscall 1017 (c-string "wget https://raw.githubusercontent.com/raysan5/raylib/master/parser/output/raylib_api.xml") #f #f))

;; load raylib_api.xml
(define xml (xml-get-root-element (xml-parse-file "raylib_api.xml")))
(define enums (xml-get-subtags xml 'Enums))
(define enums (xml-get-subtags (ref enums 1) 'Enum))
(define defines (xml-get-subtags xml 'Defines))
(define defines (xml-get-subtags (ref defines 1) 'Define))
(define aliases (xml-get-subtags xml 'Aliases))
(define aliases (xml-get-subtags (ref aliases 1) 'Alias))
(define funcs (xml-get-subtags xml 'Functions))
(define funcs (xml-get-subtags (ref funcs 1) 'Function))
(define funcs
  (filter
    (lambda (func)
      (define attributes (ref func 2))
      (define refType (attributes 'retType ""))
      (or (string-eq? "void" refType)
          (string-eq? "float" refType)
          (string-eq? "const char *" refType)
          (string-eq? "Vector2" refType)
          (string-eq? "AutomationEventList" refType)

          (string-eq? "Vector3" refType)
          (string-eq? "bool" refType)))
    funcs))

(define %convert-to-fft-enum (list "Ray" "Ray *" "Camera *" "Rectangle" "Texture2D" "Texture2D *" "GlyphInfo *" "GlyphInfo" "Camera" "Camera2D" "Camera3D" "Font" "Vector2 *" "Color" "Image *" "Image" "Vector3" "Mesh *" "Model" "BoundingBox" "ModelAnimation" "Model *" "ModelAnimation *" "Vector3 *" "Sound" "Wave" "Material" "Matrix" "Music" "AudioStream" "AudioCallback" "Color *" "Shader" "RenderTexture2D" "VrStereoConfig" "Mesh" "TraceLogCallback" "SaveFileTextCallback" "Material *" "bool" "SaveFileDataCallback" "LoadFileTextCallback" "NPatchInfo" "Wave *" "const Matrix *" "LoadFileDataCallback" "const char **" "FilePathList"))

(define (display-types-to port lst)
  (for-each
    (lambda (param)
      (let* ((t (assoc 'type (ff->alist (ref param 2))))
             (type (if (pair? t) (cdr t) t)))
        (cond ((member type %convert-to-fft-enum) (display " fft-enum" port))
              ((equal? "const char *" type) (display " type-string" port))
              ((equal? "const unsigned char *" type) (display " type-string" port))
              ((equal? "float *" type) (display  " fft-float*" port))
              ((equal? "void *" type) (display " fft-void*" port))
              ((equal? "const void *" type) (display " fft-void*" port))
              ((equal? "const int *" type) (display " fft-int*" port))
              ((equal? "int *" type) (display " fft-int*" port))
              ((equal? "char *" type) (display " fft-char" port))
              ((equal? "Vector2" type) (display " Vector2" port))
              ((equal? "AutomationEvent" type) (display " AutomationEvent" port))
              ((equal? "AutomationEventList *" type) (display " AutomationEventList" port))
              ((equal? "AutomationEventList" type) (display " AutomationEventList" port))
              ((equal? "Vector3" type) (display " Vector3" port))
              ((equal? "..." type) #f) ; special case, don't print anything
              ((equal? "unsigned" (car (string-split type)))
               (display (string-append " fft-" (car (string-split type)) "-" (cadr (string-split type))) port))
              (else
                (display (string-append " fft-" type) port)))))
    (car (cddr (vector->list lst)))))
;;;; Generate lib/raylib.scm file
;; create ./lib directory
(if (not (file-exists? "lib")) (syscall 1017 (c-string "mkdir lib") #f #f))
(define port (open-output-file "lib/raylib.scm"))

;; Define Library
(print-to port "(define-library (lib raylib) (import (otus lisp) (otus ffi)) (export ")

;; Colornames
(for-each 
  (lambda (define) 
    (if (equal? "COLOR" (xml-get-attribute define 'type #f)) (print-to port (xml-get-attribute define 'name #f))))
  defines)

;; Enums
(for-each (lambda (enum)
            (for-each (lambda (value)
                        (print-to port (xml-get-attribute value 'name "")))
                      (xml-get-subtags enum 'Value)))
          enums)

(print-to port "rgba->hex")
(print-to port "Vector2")
(print-to port "Vector3")
(print-to port "AutomationEventList")
(print-to port "AutomationEvent")


;; Functionnames
(for-each (lambda (func) (print-to port (xml-get-attribute func 'name ""))) funcs)

(print-to port ")(cond-expand (Linux (begin (define raylib (load-dynamic-library \"libraylib.so\")) (define raylib-err \"Use, for example, sudo apt install libraylib.so\"))) (else (runtime-error \"nsupported platform\" (uname)))) (begin (if (not raylib) (runtime-error \"Can't load raylib library.\" raylib-err))")

;; Common Pointers
(print-to port) (print-to port "(define fft-float* (fft* fft-float))")

;; Vector2 
(print-to port) (print-to port "(define Vector2 (list fft-float fft-float))")

;; Vector3 
(print-to port) (print-to port "(define Vector3 (list fft-float fft-float fft-float))")

;; rgba->hex
(print-to port) (print-to port "(define (rgba->hex r g b a) (+ (<< a 24) (<< b 16) (<< g 8) r))")

;; AutomationEvent 
(print-to port) (print-to port "(define AutomationEvent (list fft-int fft-int))")

;; AutomationEventList
(print-to port) (print-to port "(define AutomationEventList (list fft-int fft-int AutomationEvent))")


;; Functions
(print-to port) (print-to port ";;;; Functions")
(for-each (lambda (x) (let ((name (xml-get-attribute x 'name #f)) 
                            (retType (xml-get-attribute x 'retType #t)))
                        (print-to port ";; " (xml-get-attribute x 'desc #f))
                        (display-to port (string-append "(define " name " (raylib "))
                        (cond ((or (equal? retType "void")
                                   (equal? retType "bool")
                                   (equal? retType "float"))
                               (display-to port (string-append "fft-" retType)))
                              ((equal? retType "const char *")
                               (display-to port "type-string"))
                              (else (display-to port retType)))
                        (display-to port  (string-append " \"" name "\""))
                        (display-types-to port x) (print-to port "))")))
          funcs)

;; Enums
(print-to port) (print-to port ";;;; Enums")
(for-each (lambda (enum)
            (print-to port ";; " (xml-get-attribute enum 'name #f))
            (for-each (lambda (value)
                        (print-to port "(define " (xml-get-attribute value 'name "") " " (xml-get-attribute value 'integer "") ")"))
                      (xml-get-subtags enum 'Value)))
          enums)

;; Colors
(print-to port) (print-to port ";;;; Colors")
(for-each 
  (lambda (define)
    (cond ((equal? "COLOR" (xml-get-attribute define 'type #f))
           (print-to port "(define " (xml-get-attribute define 'name #f) " (rgba->hex " 
                     (filter-numbers (xml-get-attribute define 'value #f)) "))")))) 
  defines)
(display "))" port)

(close-port port)


(import (file xml)(scheme file))

;; filter numbers from string
(define (digit? x) (<= #\0 x #\9))
(define (number-filter lst)
  (cond ((null? lst) lst)
        ((or (eq? #\space (car lst)) (digit? (car lst))) (cons (car lst) (number-filter (cdr lst)))) 
        (else
          (number-filter (cdr lst)))))
(define filter-numbers (lambda (lst) (list->string (number-filter (string->list lst)))))

;; tokenize string based on #\space
(define (tokenize l) (let loop ((t '()) (l l)) (if (pair? l) (let ((c (car l))) (if (char=? c #\space) (cons (reverse t) (loop '() (cdr l))) (loop (cons (car l) t) (cdr l)))) (if (null? t) '() (list (reverse t))))))

;; split string by #\space
(define (string-split s) (map list->string (tokenize (string->list s))))

;; Todo: Replace in the future/simplify
(define (getty x y) (cdr (assoc x (ff->alist (cadr (vector->list y))))))
(define (show x y port) (if (not (equal? (getty x y) #f)) (display (getty x y) port)))

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
          (string-eq? "bool" refType)))
    funcs))

(define %convert-to-fft-enum
  (list "Ray" "Ray *" "Camera *" "Rectangle" "Texture2D" "Texture2D *" "GlyphInfo *" "GlyphInfo" "Camera" "Camera2D" "Camera3D" "Font" "Vector2 *" "Color" "Image *" "Image" "Vector3" "Mesh *" "Model" "BoundingBox" "ModelAnimation" "Model *" "ModelAnimation *" "Vector3 *" "Sound" "Wave" "Material" "Matrix" "Music" "AudioStream" "AudioCallback" "Color *" "Shader" "RenderTexture2D" "VrStereoConfig" "..." "Mesh" "TraceLogCallback" "SaveFileTextCallback" "Material *" "bool" "SaveFileDataCallback" "LoadFileTextCallback" "NPatchInfo" "Wave *" "const Matrix *" "LoadFileDataCallback" "FilePathList"))

(define (show-param-types params port)
  (for-each
    (lambda (param)
      (let* ((t (assoc 'type (ff->alist (ref param 2))))
             (type (if (pair? t) (cdr t) t)))
        (cond ((member type %convert-to-fft-enum) (display " fft-enum" port))
              ((equal? "const char *" type) (display " type-string" port))
              ((equal? "float *" type) (display " fft-float" port))
              ((equal? "void *" type) (display " fft-void*" port))
              ((equal? "const void *" type) (display " fft-void*" port))
              ((equal? "const int *" type) (display " fft-int*" port))
              ((equal? "int *" type) (display " fft-int*" port))
              ((equal? "char *" type) (display " fft-char" port))
              ((equal? "Vector2" type) (display " Vector2" port))
              ((equal? "unsigned" (car (string-split type)))
               (display-to port (string-append " fft-" (car (string-split type)) "-" (cadr (string-split type)))))
              (else
                (display-to port (string-append " fft-" type) )))))
    (car (cddr (vector->list params)))))

;; get void and bool names
(define (generate-functionnames port)
  (for-each
    (lambda (x)
      (begin (show 'name x port) (display "\n" port)))
    funcs))

;; void generator
(define (generate-functions port)
  (for-each
    (lambda (x)
      (begin
        (display "(define " port)
        (show 'name x port)
        (display " (raylib fft-" port)
        (show 'retType x port)
        (display " \"" port)
        (show 'name x port)
        (display "\"" port)
        (show-param-types x port)
        (display "))\n" port)))
    funcs))

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

(display "rgba->hex \n" port)

;; Functionnames
(generate-functionnames port)
(print-to port ")(cond-expand (Linux (begin (define raylib (load-dynamic-library \"libraylib.so\")) (define raylib-err \"Use, for example, sudo apt install libraylib.so\"))) (else (runtime-error \"nsupported platform\" (uname)))) (begin (if (not raylib) (runtime-error \"Can't load raylib library.\" raylib-err))")

;; Vector2 
(print-to port) (print-to port "(define Vector2 (list fft-float fft-float))")

;; rgba->hex
(print-to port) (print-to port "(define (rgba->hex r g b a) (+ (<< a 24) (<< b 16) (<< g 8) r))")

;; Functions
(print-to port) (print-to port ";;;; Voids & Bools")
(generate-functions port)

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


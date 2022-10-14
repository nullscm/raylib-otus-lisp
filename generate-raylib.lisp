(import (file xml) (owl string) (scheme file))
(define (tokenize l)
  (let loop ((t '()) (l l))
    (if (pair? l)
      (let ((c (car l)))
        (if (char=? c #\space)
          (cons (reverse t) (loop '() (cdr l)))
          (loop (cons (car l) t) (cdr l))))
      (if (null? t) '() (list (reverse t))))))

(define (string-split s)
  (map list->string (tokenize (string->list s))))

(if (not (file-exists? "raylib_api.xml")) (syscall 1017 (c-string "wget https://raw.githubusercontent.com/raysan5/raylib/master/parser/output/raylib_api.xml") #f #f))


(define xml (xml-get-root-element (xml-parse-file "raylib_api.xml")))

(define enums (xml-get-subtags xml 'Enums))
(define enums (xml-get-subtags (ref enums 1) 'Enum))

(define defines (xml-get-subtags xml 'Defines))
(define defines (xml-get-subtags (ref defines 1) 'Define))

(define aliases (xml-get-subtags xml 'Aliases))
(define aliases (xml-get-subtags (ref aliases 1) 'Alias))

(define funcs (xml-get-subtags xml 'Functions))
(define funcs (xml-get-subtags (ref funcs 1) 'Function))

(define funcs (filter (lambda (func)
      (define attributes (ref func 2))
      (define refType (attributes 'retType ""))
      (or
         (string-eq? "void" refType)
         (string-eq? "bool" refType)))
   funcs))

(define (getty x y)
  (cdr (assoc x (ff->alist (cadr (vector->list y))))))

(define (show x y port)
  (if (not (equal? (getty x y) #f))
    (display (getty x y) port)))

(define %param-blacklist
  (list "Ray"
        "Ray *"
        "Camera *"
        "Rectangle"
        "Texture2D"
        "Texture2D *"
        "GlyphInfo *"
        "GlyphInfo"
        "Vector2"
        "Camera"
        "Camera2D"
        "Camera3D"
        "Font"
        "Vector2 *"
        "Color"
        "Image *"
        "Image"
        "Vector3"
        "Mesh *"
        "Model"
        "BoundingBox"
        "ModelAnimation"
        "Model *"
        "ModelAnimation *"
        "Vector3 *"
        "Sound"
        "Wave"
        "Material"
        "Matrix"
        "Music"
        "AudioStream"
        "AudioCallback"
        "Color *"
        "Shader"
        "RenderTexture2D"
        "VrStereoConfig"
        "..."
        "Mesh"
        "TraceLogCallback"
        "SaveFileTextCallback"
        "Material *"
        "bool"
        "SaveFileDataCallback"
        "LoadFileTextCallback"
        "NPatchInfo"
        "Wave *"
        "const Matrix *"
        "LoadFileDataCallback"
        "FilePathList"))

(define (show-param-types params port)
  (for-each
    (lambda (param)
      (let* ((t (assoc 'type (ff->alist (ref param 2))))
             (type (if (pair? t) (cdr t) t)))
        (cond ((member type %param-blacklist)
               (display " fft-enum" port))
              ((equal? "const char *" type)
               (display " type-string" port)) ; Special case: string marshaling require `type-string`
              ((equal? "float *" type)
               (display " fft-float" port))
              ((equal? "void *" type)
               (display " fft-void*" port))
              ((equal? "const void *" type)
               (display " fft-void*" port))
              ((equal? "const int *" type)
               (display " fft-int*" port))
              ((equal? "int *" type)
               (display " fft-int*" port))
              ((equal? "char *" type)
               (display " fft-char" port))
              ((equal? "unsigned" (car (string-split type)))
               (display
                 (string-append
                   " fft-"
                   (car (string-split type))
                   "-"
                   (cadr (string-split type)))
                 port))
              (else
               (display (string-append " fft-" type) port)))))
    (car (cddr (vector->list params)))))

(define (generate-functionnames port)
  (for-each
    (lambda (x)
      (begin (show 'name x port) (display "\n" port)))
    funcs))

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

 (syscall 1017 (c-string "mkdir lib") #f #f))

(define port (open-output-file "lib/raylib.scm"))
(display "(define-library (lib raylib) (import (otus lisp) (otus ffi)) (export \n" port)
(generate-functionnames port)
(display
  ")(cond-expand (Linux (begin (define raylib (load-dynamic-library \"libraylib.so\")) (define raylib-err \"Use, for example, sudo apt install libraylib.so\"))) (else (runtime-error \"nsupported platform\" (uname)))) (begin (if (not raylib) (runtime-error \"Can't load raylib library.\" raylib-err))" port)
(generate-functions port)
(display "))" port)
(close-port port)

(if (file-exists? "raylib_api.xml") (syscall 1017 (c-string "rm raylib_api.xml") #f #f))



#!/usr/bin/env ol
(import (only (lib c!) stat))
(unless (stat "raylib_api.json")
   (unless (zero? (system "wget https://raw.githubusercontent.com/raysan5/raylib/master/parser/output/raylib_api.json"))
      (runtime-error "Something wrong, raylib_api.json is not downloaded :(" #n)))

(import (file json))
(define json (read-json-file "raylib_api.json"))
(unless json
   (runtime-error "Invalid raylib_api.json file."
                  "Delete it and restart this program."))

(define port (open-output-file "lib/raylib.scm"))
(unless port
   (runtime-error "Have no write access to lib/raylib.scm." #n))

(define old-output (current-output-port port))

(import (scheme dynamic-bindings))
(define names (make-parameter #n)) ; #n = #null = '()

; write lisp definition to output
(define (make-define name value)
   (names (cons name (names))) ; collect names
   (print "(define " name " " value ")"))

; type convertor
(define (convert name)
   (call/cc (lambda (return)
      ; known type
      (ff-for-each (lambda (key value)
            (if (string-eq? key name)
               (return value)))
         {  ;C type          ;FFI type
            "float"          "fft-float"
            "double"         "fft-double"
            "unsigned char"  "fft-unsigned-char"
            "unsigned short" "fft-unsigned-short"
            "unsigned int"   "fft-unsigned-int"
            "char"           "fft-char"
            "int"            "fft-int"
            "long"           "fft-long"
            "void"           "fft-void"
            "void *"         "fft-void*"
            "bool"           "fft-bool"
            ; exceptions
            "Transform **"   "type-vptr" ; pointer to pointer
            "char **"        "type-vptr" ; pointer to pointer
            "rAudioBuffer"   "fft-void"  ; not defined in the json and xml
            "rAudioProcessor""fft-void"  ; not defined in the json and xml
            ; special cases
            "..."            ";..."
            "Rectangle **"   "(fft* type-vptr)"
            "const char *"   "type-string" ; strings
            ; raylib typos
            "float*"         "(fft* fft-float)"
         })
      ; "c-type *" ?
      (when (m/ [*]$/ name) ; 
         (return (string-append "(fft* " (convert (substring name 0 -2)) ")")))
      ; skip "const"s
      (when (m/^const / name)
         (return (convert (substring name 6))))
      ; unkown, but simple type ?
      (when (m/^[A-Z][A-Za-z0-9]+$/ name)
         (return name))
      ; array ?
      (let ((split (c/[\[\]]/ name)))
         (when (> (length split) 1)
            (define name (string-append " " (convert (first split))))
            (define count (string->number (second split)))
            (return (string-append
               "(list"
               (fold string-append "" (repeat name count))
               ")"))))
      ; unprocessed type
      (runtime-error "Unhandled type" name))))

; -------------------------------------------------------------
; -- main -----
; -----------------------------
(print "(define-library (lib raylib)
(import (otus lisp) (otus ffi))
(begin
(setq RAYLIB (or
   (load-dynamic-library \"libraylib.so\")
   (load-dynamic-library \"raylib.dll\")))
")

(print ";; enums")
(for-each (lambda (enum)
      (print "; " (enum 'name) ", " (enum 'description))
      (for-each (lambda (value)
            (make-define (value 'name) (value 'value)))
         (enum 'values)))
   (json 'enums))

(print ";; structs")
(for-each (lambda (struct)
      (define name (struct 'name))
      ; no need to export structure names
      (print "(setq " name " (list ; " (struct 'description))
      (for-each (lambda (field)
            (define name (field 'name))
            (print "   " (convert (field 'type)) " ; " name))
         (struct 'fields))
      (print "))")
      ; add aliases (if any)
      (for-each (lambda (def)
            (if (string-eq? name (def 'type))
               (print "(setq " (def 'name) " " (def 'type) ")")))
         (json 'aliases [])))
   (json 'structs))

(print ";; defines")
(for-each (lambda (def)
      (define name (def 'name))
      (define tty (def 'type))
      (define value (def 'value))
      (cond
         ; numbers
         ((string-eq? tty "INT")
            (make-define name value))
         ((string-eq? tty "FLOAT")
            (make-define name value))
         ; strings
         ((string-eq? tty "STRING")
            (make-define name (string-append "\"" value "\"")))
         ; custom types
         ((string-eq? tty "COLOR")
            (make-define name (string-append
               "'(" (substring (s/,//g value) 17 -2) ")")))
         ((string-eq? tty "UNKNOWN")
            (if (m/^[A-Z_a-z]+$/ value)
               (make-define name value)))
         (else
            #false))) ; just skip it
   (json 'defines []))

(print ";; callbacks")
(for-each (lambda (callback)
      (make-define (callback 'name) (convert (callback 'returnType))))
   (json 'callbacks))

(print ";; functions")
(for-each (lambda (function)
      (define name (function 'name))
      (names (cons name (names))) ; add function to export
      (print "(define " name " (RAYLIB " (convert (function 'returnType)) " \"" name "\"")
      (for-each (lambda (param)
            (print "   " (convert (param 'type)) " ; " (param 'name)))
         (function 'params []))
      (print "))"))
   (json 'functions))

(print ")")

; export
(print "(export")
(for-each print (names))
(print "))")

; restore stdout
(current-output-port old-output)
(print "Well done. Library created.")
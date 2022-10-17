#!/usr/bin/env ol
; temporarily use raylib without installation
(define *path* (cons ".." *path*))

;; Initialization
(import (lib raylib))

(define screenWidth 800)
(define screenHeight 450)
(define ballColor DARKBLUE)
(define mouseX (car (caadr (vector->list GetMousePosition ))))
(define mouseY (cadr (caadr (vector->list GetMousePosition ))))

(InitWindow screenWidth screenHeight "raylib [core] example - mouse input")
(SetTargetFPS 60)

;; Main game loop
(let loop ((close (WindowShouldClose))
           (ballPosition (cons mouseX mouseY )))
  (unless close
    ;; Update
 (let*((x (car ballPosition))
            (y (cdr ballPosition))
(ballColor (cond ((IsMouseButtonPressed MOUSE_BUTTON_LEFT) LIME ))))

      ;; Draw
      (BeginDrawing)
      (ClearBackground RAYWHITE)
      (DrawCircleV (list x y) ballPosition 50 ballColor)

      (EndDrawing
      (loop (WindowShouldClose)  (cons x y))))))

;; De-Initialization
(CloseWindow) ; Close window and OpenGL context

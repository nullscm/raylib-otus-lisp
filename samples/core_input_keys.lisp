#!/usr/bin/env ol
; temporarily use raylib without installation
(define *path* (cons ".." *path*))

;; Initialization
(import (lib raylib))

(define screenWidth 800)
(define screenHeight 450)

(InitWindow screenWidth screenHeight "raylib [core] example - keyboard input")
(SetTargetFPS 60)

;; Main game loop
(let loop ((close (WindowShouldClose))
           (ballPosition (cons (/ screenWidth 2) (/ screenHeight 2))))
   (unless close
      ;; Update
      (let*((x (car ballPosition))
            (y (cdr ballPosition))

            (x (if (IsKeyDown KEY_RIGHT) (+ x 2) x))
            (x (if (IsKeyDown KEY_LEFT)  (- x 2) x))
            (y (if (IsKeyDown KEY_UP)    (- y 2) y))
            (y (if (IsKeyDown KEY_DOWN)  (+ y 2) y)) )

      ;; Draw
      (BeginDrawing)

         (ClearBackground RAYWHITE)
         (DrawText "move the ball with arrow keys" 10 10 20 DARKGRAY)
         (DrawCircleV (list x y) 50 MAROON)

      (EndDrawing)
      (loop (WindowShouldClose) (cons x y)))))

;; De-Initialization
(CloseWindow) ; Close window and OpenGL context

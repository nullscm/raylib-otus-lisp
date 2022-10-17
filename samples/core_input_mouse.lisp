#!/usr/bin/env ol
; temporarily use raylib without installation
(define *path* (cons ".." *path*))

;; Initialization
(import (lib raylib))

(define screenWidth 800)
(define screenHeight 450)
(define ballPosition (Vector2 -100 100))
(define ballColor DARKBLUE)
(InitWindow screenWidth screenHeight "raylib [core] example - mouse input")
(SetTargetFPS 60)

;; Main game loop
(let loop ((close (WindowShouldClose)))
   (unless close
      ;; Update
      (let ((ballPosition (GetMousePosition))
            (ballColor (cond ((IsMouseButtonPressed MOUSE_BUTTON_LEFT) LIME ))))
      ;; Draw
      (BeginDrawing)

         (ClearBackground RAYWHITE)
         (DrawText "move the ball with arrow keys" 10 10 20 DARKGRAY)
         (DrawCircleV ballPosition 50 ballColor)

      (EndDrawing)
      (loop (WindowShouldClose)))))

;; De-Initialization
(CloseWindow) ; Close window and OpenGL context

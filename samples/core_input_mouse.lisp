#!/usr/bin/env ol
; temporarily use raylib without installation
(define *path* (cons ".." *path*))

;; Initialization
(import (lib raylib))

(define screenWidth 800)
(define screenHeight 450)
(define ballColor DARKBLUE)

(InitWindow screenWidth screenHeight "raylib [core] example - mouse input")
(SetTargetFPS 60)
(display (GetMousePosition))
;; Main game loop
(let loop ((close (WindowShouldClose))
  (unless close
     (let  ((ballColor (cond ((IsMouseButtonPressed MOUSE_BUTTON_LEFT) LIME)))
           (ballPosition (GetMousePosition))

      ;; Draw
      (BeginDrawing)
      (ClearBackground RAYWHITE)
      (DrawCircleV (list x y) ballPosition 50 ballColor)

      (EndDrawing (loop (WindowShouldClose))))))))

;; De-Initialization
(CloseWindow) ; Close window and OpenGL context

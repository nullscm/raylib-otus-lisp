#!/usr/bin/env ol
; temporarily use raylib without installation
(define *path* (cons ".." *path*))

;; Initialization
(import (lib raylib))

(define screenWidth 800)
(define screenHeight 450)

(InitWindow screenWidth screenHeight "raylib [core] example - mouse input")
(SetTargetFPS 60)

;; Main game loop
(let loop ((color DARKBLUE))
   (unless (WindowShouldClose)
      ;; Update
      (define ballPosition (GetMousePosition))
      (define ballColor (cond
         ((IsMouseButtonPressed MOUSE_BUTTON_LEFT) MAROON)
         ((IsMouseButtonPressed MOUSE_BUTTON_MIDDLE) LIME)
         ((IsMouseButtonPressed MOUSE_BUTTON_RIGHT) DARKBLUE)
         ((IsMouseButtonPressed MOUSE_BUTTON_SIDE) PURPLE)
         ((IsMouseButtonPressed MOUSE_BUTTON_EXTRA) YELLOW)
         ((IsMouseButtonPressed MOUSE_BUTTON_FORWARD) ORANGE)
         ((IsMouseButtonPressed MOUSE_BUTTON_BACK) BEIGE)
         (else color)))

      ;; Draw
      (BeginDrawing)

         (ClearBackground RAYWHITE)
         (DrawCircleV ballPosition 40 ballColor)
         (DrawText "move ball with mouse and click mouse button(s) to change color" 10 10 20 DARKGRAY)

      (EndDrawing)
      (loop ballColor)))

;; De-Initialization
(CloseWindow) ; Close window and OpenGL context

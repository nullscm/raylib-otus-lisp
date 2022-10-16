#!/usr/bin/env ol
; temporarily use raylib without installation
(define *path* (cons ".." *path*))

;; Initialization
(import (lib raylib))

(define screenWidth 800)
(define screenHeight 450)

(InitWindow screenWidth screenHeight "raylib [core] example - basic window")
(SetTargetFPS 60)

;; Main game loop
(let loop ((close (WindowShouldClose)))
   (unless close
      ;; Update
      ;; TODO: Update your variables here

      ;; Draw
      (BeginDrawing)

         (ClearBackground RAYWHITE)
         (DrawText "Congrats! You created your first window!" 190 200 20 LIGHTGRAY)

      (EndDrawing)
      (loop (WindowShouldClose))))

;; De-Initialization
(CloseWindow) ; Close window and OpenGL context

#!/usr/bin/env ol
; temporarily use raylib without installation
(define *path* (cons ".." *path*))

;; Initialization
(import (lib raylib))
(import (only (otus ffi) fft-int)) ; for the (TextFormat ...)

(define screenWidth 800)
(define screenHeight 450)

(InitWindow screenWidth screenHeight "raylib [core] example - input mouse wheel")

(define scrollSpeed 4) ; Scrolling speed in pixels

(SetTargetFPS 60)

;; Main game loop
(let loop ((boxPosY (- (/ screenHeight 2) 40)))
   (unless (WindowShouldClose)
      ;; Update
      (define boxPositionY (- boxPosY (* (GetMouseWheelMove) scrollSpeed)))

      ;; Draw
      (BeginDrawing)

         (ClearBackground RAYWHITE)
         (DrawRectangle (- (/ screenWidth 2) 40) boxPositionY 80 80 MAROON)

         (DrawText "Use mouse wheel to move the cube up and down!" 10 10 20 GRAY)
                                                      ; we should point the TextFormat argument types
         (DrawText (TextFormat "Box position Y: %03i" (cons fft-int boxPositionY)) 10 40 20 LIGHTGRAY)

      (EndDrawing)
      (loop boxPositionY)))

;; De-Initialization
(CloseWindow) ; Close window and OpenGL context

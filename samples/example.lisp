#!/usr/bin/env ol

;; add raylib to LD_LIBRARY_PATH and load the library
,load "../lib/raylib.scm"

(import (lib raylib))
(define LIGHTGRAY #xc8c8c8ff)
(define RAYWHITE #xf5f5f5ff)

(InitWindow 640 480 "raylib [core] example - basic window")

(let loop ((close (WindowShouldClose)))
   (unless close
      (BeginDrawing)
      (ClearBackground RAYWHITE)
      (DrawText "Congrats! You created your first window!" 190 200 20 LIGHTGRAY)
      (EndDrawing)
      (loop (WindowShouldClose))))

(CloseWindow)
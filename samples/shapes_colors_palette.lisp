#define MAX_COLORS_COUNT    21          // Number of colors available

const int screenWidth = 800;
const int screenHeight = 450;
InitWindow(screenWidth, screenHeight, "raylib [shapes] example - colors palette");
Color colors[MAX_COLORS_COUNT] = {
DARKGRAY, MAROON, ORANGE, DARKGREEN, DARKBLUE, DARKPURPLE, DARKBROWN,
GRAY, RED, GOLD, LIME, BLUE, VIOLET, BROWN, LIGHTGRAY, PINK, YELLOW,
GREEN, SKYBLUE, PURPLE, BEIGE };
const char *colorNames[MAX_COLORS_COUNT] = {
"DARKGRAY", "MAROON", "ORANGE", "DARKGREEN", "DARKBLUE", "DARKPURPLE",
"DARKBROWN", "GRAY", "RED", "GOLD", "LIME", "BLUE", "VIOLET", "BROWN",
"LIGHTGRAY", "PINK", "YELLOW", "GREEN", "SKYBLUE", "PURPLE", "BEIGE" };
Rectangle colorsRecs[MAX_COLORS_COUNT] = { 0 };     // Rectangles array
// Fills colorsRecs data (for every rectangle)
for (int i = 0; i < MAX_COLORS_COUNT; i++)
         {
         colorsRecs[i].x = 20.0f + 100.0f *(i%7) + 10.0f *(i%7);
         colorsRecs[i].y = 80.0f + 100.0f *(i/7) + 10.0f *(i/7);
         colorsRecs[i].width = 100.0f;
         colorsRecs[i].height = 100.0f;
         }
         int colorState[MAX_COLORS_COUNT] = { 0 };           // Color state: 0-DEFAULT, 1-MOUSE_HOVER
         Vector2 mousePoint = { 0.0f, 0.0f };
         SetTargetFPS(60);               // Set our game to run at 60 frames-per-second
         while (!WindowShouldClose())    // Detect window close button or ESC key
         {
         BeginDrawing();
         ClearBackground(RAYWHITE);
         DrawText("raylib colors palette", 28, 42, 20, BLACK);
         DrawText("press SPACE to see all colors", GetScreenWidth() - 180, GetScreenHeight() - 40, 10, GRAY);
         for (int i = 0; i < MAX_COLORS_COUNT; i++)    // Draw all rectangles
                  {
                  DrawRectangleRec(colorsRecs[i], Fade(colors[i], colorState[i]? 0.6f : 1.0f));
                  if (IsKeyDown(KEY_SPACE) || colorState[i])
                  {
                  DrawRectangle((int)colorsRecs[i].x, (int)(colorsRecs[i].y + colorsRecs[i].height - 26), (int)colorsRecs[i].width, 20, BLACK);
                  DrawRectangleLinesEx(colorsRecs[i], 6, Fade(BLACK, 0.3f));
                  DrawText(colorNames[i], (int)(colorsRecs[i].x + colorsRecs[i].width - MeasureText(colorNames[i], 10) - 12),
                                          (int)(colorsRecs[i].y + colorsRecs[i].height - 20), 10, colors[i]);
                  }
                  }

                  EndDrawing();
                  }
                  CloseWindow();                // Close window and OpenGL context


                  #!/usr/bin/env ol
                  ; temporarily use raylib without installation
                  (define *path* (cons ".." *path*))

                  ;; Initialization
                  (import (lib raylib))

                  (define screenWidth 800)
                  (define screenHeight 450)

                  (InitWindow screenWidth screenHeight "raylib [shapes] example - colors palette")
                  (define colors '(DARKGRAY MAROON ORANGE DARKGREEN DARKBLUE DARKPURPLE DARKBROWN GRAY RED GOLD LIME BLUE VIOLET BROWN LIGHTGRAY PINK YELLOW GREEN SKYBLUE PURPLE BEIGE))
                  (define colorRecs (list ""))
(assoc 'DARKGRAY colors)
(define colorRecs (let ((colorRecs '(1 2 3 4)))
   (list-set! colorRecs '('name color)
   colorRecs))
                                          )
(define colorRecs (for-each
    (lambda (color) 
      (print "name " (symbol->string color)))
    colors))
 (display colorRecs)
(define (extend l . xs) (if (null? l) xs (cons (car l) (apply extend (cdr l) xs))))

                    ;;(let loop ((x (length color))) (if (positive? x) (begin (display x) (loop (- x 1))) x))

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

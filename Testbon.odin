package main

import "core:fmt"
import lr "vendor:raylib"

main :: proc() {
    lr.InitWindow(720, 720, "Bouncing Box");

    boxX := 340;
    boxY := 340;
    velX := 3;
    velY := 3;

    lr.SetTargetFPS(60);

    for !lr.WindowShouldClose() {
  
        boxX += velX;
        boxY += velY;

        if boxX <= 0 || boxX + 20 >= 720 {
            velX = -velX;
        }
        if boxY <= 0 || boxY + 20 >= 720 {
            velY = -velY;
        }

        lr.BeginDrawing();
        lr.ClearBackground(lr.ColorFromHSV(71, 92, 74));

        lr.DrawRectangle(cast(i32)boxX, cast(i32)boxY, 20, 20, lr.BLACK);

        lr.EndDrawing();
    }

    lr.CloseWindow();
}

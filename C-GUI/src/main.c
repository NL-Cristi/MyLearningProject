#include "raylib.h"
#define RAYGUI_IMPLEMENTATION
#include "raygui.h"
#include "tinyfiledialogs.h"
#define RINI_IMPLEMENTATION
#include "rini.h" // Header-only, implementation generated here

#include <string.h>
#include <stdlib.h>

int main(void) {
    // Initialize window
    InitWindow(800, 600, "File Reader App - MyLearningProject");
    SetTargetFPS(60);

    // Variables for file content
    char fileContent[4096] = {0};
    bool contentLoaded = false;

    while (!WindowShouldClose()) {
        // Update
        if (GuiButton((Rectangle){50, 50, 200, 50}, "Open File")) {
            // Open file dialog using tinyfiledialogs
            const char *filePath = tinyfd_openFileDialog(
                "Select a Text File", "", 0, NULL, "Text files (*.txt)", 0
            );
            if (filePath != NULL) {
                // Read file content
                FILE *file = fopen(filePath, "r");
                if (file != NULL) {
                    fread(fileContent, sizeof(char), sizeof(fileContent) - 1, file);
                    fileContent[sizeof(fileContent) - 1] = '\0';
                    fclose(file);
                    contentLoaded = true;
                }
            }
        }

        // Draw
        BeginDrawing();
        ClearBackground(RAYWHITE);
        if (contentLoaded) {
            DrawText(fileContent, 50, 150, 20, BLACK);
        } else {
            DrawText("No file loaded. Click 'Open File' to select a text file.", 50, 150, 20, GRAY);
        }
        EndDrawing();
    }

    // Cleanup
    CloseWindow();
    return 0;
}
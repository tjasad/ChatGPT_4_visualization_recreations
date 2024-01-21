// Define the grid size
int gridSize = 6;
int cellSize;

// Array of colors
color[] colors = {color(172,51,35), color(194,195,186), color(119,169,165), 
                  color(171,95,142), color(71,130,40), color(53,47,94), color(194,172,0)};

void setup() {
  // Set the size of the canvas
  size(600, 600);
  cellSize = width / gridSize;
  background(0); // Set background to black

  // Create the grid with quadrilaterals
  for (int x = 0; x < gridSize; x++) {
    for (int y = 0; y < gridSize; y++) {
      drawQuadrilateralsInCell(x, y);
    }
  }
}

void drawQuadrilateralsInCell(int gridX, int gridY) {
  // Choose a random color for the cell
  color cellColor = colors[int(random(colors.length))];
  fill(cellColor);

  // Determine the number of quadrilaterals in this cell
  int quadCount = int(random(1, 5)); // Random number between 1 and 4

  // Draw each quadrilateral
  for (int i = 0; i < quadCount; i++) {
    beginShape();
    for (int j = 0; j < 4; j++) {
      // Generate vertices that are within the cell but can slightly overlap with neighboring cells
      int x = int(random(gridX * cellSize - 10, (gridX + 1) * cellSize + 10));
      int y = int(random(gridY * cellSize - 10, (gridY + 1) * cellSize + 10));
      vertex(x, y);
    }
    endShape(CLOSE);
  }
  
  save("iteration_1.jpg");
}

int gridSize = 6;
int cellSize;

color[] colors = {color(172,51,35), color(194,195,186), color(119,169,165), 
                  color(171,95,142), color(71,130,40), color(53,47,94), color(194,172,0)};

void setup() {
  size(600, 600);
  cellSize = width / gridSize; // Standard cell size
  background(0); // Black background

  strokeWeight(3); // Increased line thickness

  for (int x = 0; x < gridSize; x++) {
    for (int y = 0; y < gridSize; y++) {
      drawQuadrilateralsInCell(x, y);
    }
  }
  
  save("iteration_7.jpg");
}

void drawQuadrilateralsInCell(int gridX, int gridY) {
  color cellColor = colors[int(random(colors.length))];
  stroke(cellColor);
  noFill(); // Only color the borders

  int quadCount = int(random(10, 20)); // Number of quadrilaterals

  for (int i = 0; i < quadCount; i++) {
    float centerX = gridX * cellSize + cellSize / 2; // Center of cell
    float centerY = gridY * cellSize + cellSize / 2;

    // Slightly increased variation in radius and rotation
    float radius = random(cellSize * 0.15, cellSize * 0.55); // Adjusted range for size variation
    float rotationOffset = PI/4 + random(-PI/8, PI/8); // Slightly increased range for rotation variation

    beginShape();
    for (int j = 0; j < 4; j++) {
      float angle = PI / 2 * j + rotationOffset; // Apply rotation offset
      float cornerOffset = random(1.25, 1.55); // Slightly increased corner coverage variation
      float x = centerX + cos(angle) * radius * cornerOffset; 
      float y = centerY + sin(angle) * radius * cornerOffset;
      vertex(x, y);
    }
    endShape(CLOSE);
  }
}

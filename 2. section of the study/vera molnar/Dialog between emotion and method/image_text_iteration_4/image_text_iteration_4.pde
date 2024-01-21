int gridSize = 6;
int cellSize;

color[] colors = {color(172,51,35), color(194,195,186), color(119,169,165), 
                  color(171,95,142), color(71,130,40), color(53,47,94), color(194,172,0)};

void setup() {
  size(600, 600);
  cellSize = width / gridSize - 10; // Reduce cell size for closer cells
  background(0); // Black background

  for (int x = 0; x < gridSize; x++) {
    for (int y = 0; y < gridSize; y++) {
      drawQuadrilateralsInCell(x, y);
    }
  }
}

void drawQuadrilateralsInCell(int gridX, int gridY) {
  color cellColor = colors[int(random(colors.length))];
  stroke(cellColor);
  noFill(); // Only color the borders

  int quadCount = int(random(5, 10)); // Number of quadrilaterals

  for (int i = 0; i < quadCount; i++) {
    float centerX = gridX * cellSize + cellSize / 2 + 5; // Offset for closer cells
    float centerY = gridY * cellSize + cellSize / 2 + 5;
    float radius = random(cellSize * 0.2, cellSize * 0.4); // More variation in radius

    beginShape();
    for (int j = 0; j < 4; j++) {
      float angle = TWO_PI / 4 * j + random(-PI/6, PI/6); // Increased range for angle variation
      float x = centerX + cos(angle) * radius;
      float y = centerY + sin(angle) * radius;
      vertex(x, y);
    }
    endShape(CLOSE);
  }
  
  save("iteration_4.jpg");
}

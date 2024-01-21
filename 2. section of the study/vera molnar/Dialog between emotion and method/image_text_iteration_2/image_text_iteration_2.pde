int gridSize = 6;
int cellSize;

color[] colors = {color(172,51,35), color(194,195,186), color(119,169,165), 
                  color(171,95,142), color(71,130,40), color(53,47,94), color(194,172,0)};

void setup() {
  size(600, 600);
  cellSize = width / gridSize;
  background(0); // Black background

  for (int x = 0; x < gridSize; x++) {
    for (int y = 0; y < gridSize; y++) {
      drawQuadrilateralsInCell(x, y);
    }
  }
  
  save("iteration_2.jpg");
}

void drawQuadrilateralsInCell(int gridX, int gridY) {
  color cellColor = colors[int(random(colors.length))];
  stroke(cellColor);
  noFill(); // Only color the borders

  int quadCount = int(random(5, 10)); // Increased number of quadrilaterals

  for (int i = 0; i < quadCount; i++) {
    beginShape();
    float centerX = random(gridX * cellSize, (gridX + 1) * cellSize);
    float centerY = random(gridY * cellSize, (gridY + 1) * cellSize);
    for (int j = 0; j < 4; j++) {
      float angle = random(TWO_PI);
      float radius = random(cellSize * 0.3, cellSize * 0.5);
      float x = centerX + cos(angle) * radius;
      float y = centerY + sin(angle) * radius;
      vertex(x, y);
    }
    endShape(CLOSE);
  }
}

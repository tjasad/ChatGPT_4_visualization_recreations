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
  
  save("itertaion_6.jpg");
}

void drawQuadrilateralsInCell(int gridX, int gridY) {
  color cellColor = colors[int(random(colors.length))];
  stroke(cellColor);
  noFill(); // Only color the borders

  int quadCount = int(random(10, 20)); // Number of quadrilaterals

  for (int i = 0; i < quadCount; i++) {
    float centerX = gridX * cellSize + cellSize / 2; // Center of cell
    float centerY = gridY * cellSize + cellSize / 2;
    float radius = random(cellSize * 0.1, cellSize * 0.5); // Radius range

    beginShape();
    for (int j = 0; j < 4; j++) {
      float angle = TWO_PI / 4 * j + random(-PI/6, PI/6); // Angle variation
      // Extend vertices for overlap
      float x = centerX + cos(angle) * radius * 1.2; 
      float y = centerY + sin(angle) * radius * 1.2;
      vertex(x, y);
    }
    endShape(CLOSE);
  }
}

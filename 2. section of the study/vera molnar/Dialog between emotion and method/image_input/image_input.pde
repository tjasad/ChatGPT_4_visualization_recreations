int cols, rows;
int gridSize = 50; // Adjust grid size as needed
color[] palette = {
  color(255, 0, 0), color(0, 0, 255), color(255, 255, 0), 
  color(255, 0, 255), color(0, 255, 0), color(0, 255, 255),
  color(255, 127, 0) // Example palette - add more colors as needed
};

void setup() {
  size(500, 500); // Canvas size
  cols = width / gridSize;
  rows = height / gridSize;
  noLoop();
}

void draw() {
  background(0); // Black background

  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      drawRotatedSquare(i * gridSize, j * gridSize);
    }
  }
}

void drawRotatedSquare(int x, int y) {
  pushMatrix();
  translate(x + gridSize / 2, y + gridSize / 2);
  rotate(random(TWO_PI)); // Rotate randomly between 0 and 2*PI radians

  // Draw multiple squares per spot to mimic the overlapping effect
  for (int i = 0; i < 3; i++) {
    fill(palette[int(random(palette.length))], 150); // Random color with some transparency
    rectMode(CENTER);
    square(0, 0, gridSize + random(-10, 10)); // Square size with randomness
  }

  popMatrix();
  
  save("iteration_1.jpg");
}

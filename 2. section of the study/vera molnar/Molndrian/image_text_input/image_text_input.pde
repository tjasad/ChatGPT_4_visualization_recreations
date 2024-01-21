void setup() {
  // Set the size of the window
  size(500, 500);
  background(255); // Set the background to white
  stroke(0); // Set the line color to black
}

void draw() {
  int numberOfLines = (int)random(50, 150); // Random number of lines between 50 and 150

  for (int i = 0; i < numberOfLines; i++) {
    float x1 = random(width);
    float y1 = random(height);
    float x2, y2;

    if (random(1) < 0.5) {
      // Horizontal line
      x2 = x1;
      y2 = random(height);
    } else {
      // Vertical line
      x2 = random(width);
      y2 = y1;
    }

    line(x1, y1, x2, y2); // Draw the line
  }

  noLoop(); // Stop the draw loop after drawing the lines
  save("iteration_1.jpg");
}

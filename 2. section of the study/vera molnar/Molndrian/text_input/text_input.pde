void setup() {
  size(800, 600); // Set the size of the window
  background(255); // Set background color to white
}

void draw() {
  int numberOfLines = (int)random(20, 50); // Random number of lines between 20 and 50

  for (int i = 0; i < numberOfLines; i++) {
    float x1 = random(width);  // Random starting x position
    float y1 = random(height); // Random starting y position
    float len = random(20, 100); // Random length between 20 and 100
    stroke(0); // Set line color to black

    if (random(1) > 0.5) {
      // Draw a horizontal line
      line(x1, y1, x1 + len, y1);
    } else {
      // Draw a vertical line
      line(x1, y1, x1, y1 + len);
    }
  }

  noLoop(); // Stop draw loop after one iteration
  
  save("iteration_1.jpg");
}

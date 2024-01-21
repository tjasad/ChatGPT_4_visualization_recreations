void setup() {
  // Set up the canvas
  size(500, 500);
  background(255); // white background
  stroke(0); // black lines
}

void draw() {
  // Stop the draw loop after one iteration
  noLoop();
  
  // Draw a large number of lines
  for (int i = 0; i < 1000; i++) {
    float x1 = random(width);
    float y1 = random(height);
    float x2 = random(width);
    float y2 = random(height);
    line(x1, y1, x2, y2);
  }
  
  save("iteration_1.jpg");
}

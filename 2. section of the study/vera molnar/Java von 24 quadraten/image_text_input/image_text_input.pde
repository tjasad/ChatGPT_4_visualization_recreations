int numRects = 24;

void setup() {
  size(640, 640);
  background(255);
  noFill();
  strokeWeight(2);

  float padding = 50;
  float maxW = width - 2*padding; // Maximum width for rectangles
  float maxH = height - 2*padding; // Maximum height for rectangles
  float minW = 60; // Minimum width for rectangles
  float minH = 60; // Minimum height for rectangles
  float w, h, x, y;
  for (int i = 0; i < numRects; i++) {
    // Determine the size of the rectangle randomly
    w = random(minW, maxW);
    h = random(minH, maxH);
    // Determine the position of the rectangle randomly
    x = random(padding, width - w - padding);
    y = random(padding, height - h - padding);
    
    // Draw rectangles with increasing darkness
    if (i < numRects / 4) {
      stroke(200); // Light grey for the first quarter
    } else {
      stroke(0); // Black for the rest
    }

    rect(x, y, w, h);
  }
  
  save("iteration_1.jpg");
}

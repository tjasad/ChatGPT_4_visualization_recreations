void setup() {
  size(600, 600);
  background(255);
  noFill();
  stroke(0);
  int numRects = 10; // Number of rectangles to draw
  float offset = 10; // Offset between each rectangle
  float initialSize = 300; // Initial size of the innermost rectangle
  float alphaValue = 50; // Opacity of the rectangles
  
  // Loop to create a series of rectangles with decreasing opacity
  for (int i = 0; i < numRects; i++) {
    float size = initialSize + i * offset;
    float x = width/2 - size/2;
    float y = height/2 - size/2;
    stroke(0, alphaValue);
    rect(x, y, size, size);
    
    // Decrease opacity as we move outward
    alphaValue *= 0.8;
  }
  
  save("iteration_1.jpg");
}

void draw() {
  // No continuous drawing needed
}

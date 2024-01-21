void setup() {
  size(600, 830); // Set the size of the window to match the aspect ratio of the image
  background(255); // Set the background to white
  stroke(0); // Set the line color to black
  noFill(); // No fill for the rectangles

  int numLines = 100; // An arbitrary number of lines for complexity
  float margin = width * 0.1; // A margin around the rectangles
  float maxRectWidth = width * 0.8; // Maximum width of rectangles
  float maxRectHeight = height * 0.8; // Maximum height of rectangles
  
  for (int i = 0; i < numLines; i++) {
    // Randomize the position and size of the rectangles
    float x = random(margin, width - margin);
    float y = random(margin, height - margin);
    float w = random(margin, maxRectWidth);
    float h = random(margin, maxRectHeight);
    
    // Draw the rectangles
    rect(x, y, w, h);
  }
  
  save("iteration_1.jpg");
}

void draw() {
  // No continuous drawing needed
  noLoop();
}

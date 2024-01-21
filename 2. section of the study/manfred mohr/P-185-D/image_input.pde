void setup() {
  size(400, 500); // Set the size of the canvas
  background(255); // Set the background color to white
  noLoop(); // Ensure that draw() is only called once
}

void draw() {
  int cols = 10;
  int rows = 12;
  float cellWidth = width / cols;
  float cellHeight = height / rows;
  
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      float x = i * cellWidth;
      float y = j * cellHeight;
      drawSymbol(x, y, cellWidth, cellHeight);
    }
  }
  
  save("iteration_1.jpg");
}

void drawSymbol(float x, float y, float w, float h) {
  pushMatrix();
  translate(x, y);
  
  int symbol = (int)random(4); // Randomly choose a symbol to draw
  
  switch(symbol) {
    case 0:
      // Draw a diagonal line
      line(0, 0, w, h);
      break;
    case 1:
      // Draw an inverted diagonal line
      line(w, 0, 0, h);
      break;
    case 2:
      // Draw a cross
      line(0, 0, w, h);
      line(w, 0, 0, h);
      break;
    case 3:
      // Draw a rectangle
      rect(0, 0, w, h);
      break;
  }
  
  popMatrix();
}

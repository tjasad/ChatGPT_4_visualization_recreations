void setup() {
  size(800, 800); // Set the size of the canvas
  background(255); // Set the background to white
  noLoop(); // Run the draw function only once
}

void draw() {
  int numShapes = 10; // Number of shapes to draw
  int numVertices = 6; // Number of vertices per shape

  for (int i = 0; i < numShapes; i++) {
    beginShape();
    for (int j = 0; j < numVertices; j++) {
      // Calculate random positions for vertices
      float x = random(width);
      float y = random(height);
      vertex(x, y); // Place a vertex
      
      // Optionally, connect this vertex with others to create more lines
      for (int k = 0; k < j; k++) {
        float connectX = random(width);
        float connectY = random(height);
        line(x, y, connectX, connectY);
      }
    }
    endShape(CLOSE); // End the shape
  }
  
  save("iteration_1.jpg");
}

// Define the colors with an alpha value for transparency
color[] colors = {
  color(162, 210, 255, 128), // Slightly transparent
  color(189, 224, 254, 128),
  color(255, 175, 204, 128),
  color(205, 180, 219, 128)
};

void setup() {
  size(500, 500);
  noLoop();
  noStroke();
  smooth();
 
}

void draw() {
  background(255); // White background

  // Draw shapes
  for (int i = 0; i < colors.length; i++) {
    fill(colors[i]);
    beginShape();
    // Use random points at the edges of the canvas to ensure full coverage
    float edgeBuffer = 20; // Buffer to avoid cutting off shapes at the edges
    for (int j = 0; j < 8; j++) { // Increase vertices for a more irregular shape
      float x, y;
      if (j % 2 == 0) {
        // Place vertices on the edges
        x = random(edgeBuffer, width - edgeBuffer);
        y = (j < 4) ? edgeBuffer : height - edgeBuffer;
      } else {
        // Place vertices on the top and bottom
        x = (j == 1 || j == 5) ? edgeBuffer : width - edgeBuffer;
        y = random(edgeBuffer, height - edgeBuffer);
      }
      curveVertex(x, y);
    }
    endShape(CLOSE);
  }
  
  save("iteration_3.jpg");
}

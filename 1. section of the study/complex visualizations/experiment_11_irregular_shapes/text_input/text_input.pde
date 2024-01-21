// Processing sketch
void setup() {
  size(800, 600); // Set the size of the canvas
  background(255); // Set background color
  noLoop(); // Draw only once
}

void draw() {
  // Define colors
  color c1 = color(162, 210, 255);
  color c2 = color(189, 224, 254);
  color c3 = color(255, 175, 204);
  color c4 = color(205, 180, 219);

  // Draw four irregular shapes
  drawIrregularShape(100, 100, c1);
  drawIrregularShape(300, 200, c2);
  drawIrregularShape(500, 100, c3);
  drawIrregularShape(200, 300, c4);
  
  save("irregularShape.jpg");
}

void drawIrregularShape(float x, float y, color col) {
  fill(col); // Set fill color for the shape
  noStroke(); // No border for the shape
  
  beginShape();
  // Create an irregular shape with dynamic distortions
  for (int i = 0; i < 8; i++) {
    float angle = TWO_PI / 8 * i;
    float radius = random(30, 60); // Random radius for distortion
    float vx = x + cos(angle) * radius;
    float vy = y + sin(angle) * radius;
    vertex(vx, vy);
  }
  endShape(CLOSE);
}

void mousePressed() {
  redraw(); // Redraw when the mouse is pressed
}

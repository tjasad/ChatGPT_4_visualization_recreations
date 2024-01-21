// Define the colors
color[] colors = {
  color(162, 210, 255),
  color(189, 224, 254),
  color(255, 175, 204),
  color(205, 180, 219)
};

void setup() {
  size(500, 500);
  noLoop();
  noStroke();
  smooth();
}

void draw() {
  background(255); // White background

  for (int i = 0; i < colors.length; i++) {
    fill(colors[i]);
    beginShape();
    // Generate irregular shapes with fewer vertices to save memory
    for (int j = 0; j < 6; j++) { // Using hexagon-like shapes for simplicity
      float angle = TWO_PI / 6 * j;
      float radius = random(50, 150); // Random radius for irregularity
      float x = width / 2 + cos(angle) * radius;
      float y = height / 2 + sin(angle) * radius;
      curveVertex(x, y);
    }
    endShape(CLOSE);
  }
  
  save("irregularShape.jpg");
}

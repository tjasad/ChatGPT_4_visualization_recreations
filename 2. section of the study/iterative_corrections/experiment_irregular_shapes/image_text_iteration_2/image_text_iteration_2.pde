// Define the colors with an alpha value for transparency
color[] colors = {
  color(162, 210, 255, 180), // Slightly transparent
  color(189, 224, 254, 180),
  color(255, 175, 204, 180),
  color(205, 180, 219, 180)
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
    // Ensure the shapes are drawn within the bounds of the canvas
    // Start and end vertices are more towards the center to avoid cutoff
    for (int j = 0; j < 6; j++) {
      float angle = TWO_PI / 6 * j;
      float radius = random(50, width * 0.4); // Adjust radius
      float x = constrain(width / 2 + cos(angle) * radius, 0, width - 1);
      float y = constrain(height / 2 + sin(angle) * radius, 0, height - 1);
      curveVertex(x, y);
    }
    endShape(CLOSE);
  }
  
  save("iteration_2.jpg");
}

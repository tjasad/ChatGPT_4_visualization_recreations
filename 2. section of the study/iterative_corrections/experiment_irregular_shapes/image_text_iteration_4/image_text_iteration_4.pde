// Define the colors with an alpha value for transparency
color[] colors = {
  color(162, 210, 255, 128), // Slightly transparent
  color(189, 224, 254, 128),
  color(255, 175, 204, 128),
  color(205, 180, 219, 128)
};

void setup() {
  size(600, 600); // Increased canvas size
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
    // Create convex shapes
    float angleStep = TWO_PI / 8; // Divide the circle into 8 steps
    float startAngle = random(TWO_PI); // Random starting angle for each shape
    float radius = width * 0.5; // Set the radius
    for (int j = 0; j < 8; j++) {
      // Calculate vertex positions on the circle
      float angle = startAngle + angleStep * j;
      float x = width / 2 + cos(angle) * radius;
      float y = height / 2 + sin(angle) * radius;
      vertex(x, y);
    }
    endShape(CLOSE);
  }
  
  save("iteration_4.jpg");
}

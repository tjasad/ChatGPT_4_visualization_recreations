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

  for (int i = 0; i < colors.length; i++) {
    fill(colors[i]);
    
    // Creating a convex shape with smooth edges
    float angleStep = TWO_PI / 8; // Divide the circle into 8 steps
    float startAngle = random(TWO_PI); // Random starting angle for each shape
    float radius = width * 0.3; // Set the radius

    // We need to duplicate the first few points for the curve to work correctly
    float firstX = width / 2 + cos(startAngle) * radius;
    float firstY = height / 2 + sin(startAngle) * radius;
    float secondX = width / 2 + cos(startAngle + angleStep) * radius;
    float secondY = height / 2 + sin(startAngle + angleStep) * radius;

    beginShape();
    curveVertex(firstX, firstY); // Duplicate the first point
    curveVertex(firstX, firstY); // Start point

    for (int j = 0; j <= 8; j++) { // Loop goes one step beyond to close the shape smoothly
      // Calculate vertex positions on the circle
      float angle = startAngle + angleStep * j;
      float x = width / 2 + cos(angle) * radius;
      float y = height / 2 + sin(angle) * radius;
      curveVertex(x, y);
    }

    curveVertex(secondX, secondY); // Duplicate the last point
    curveVertex(secondX, secondY); // End point
    endShape(CLOSE);
  }
  
  save("iteration_5.jpg");
}

void setup() {
  // Set the size of the canvas
  size(400, 400);

  // Set the background color
  background(244, 231, 131);

  // Disable borders for shapes
  noStroke();

  // Draw the half-circle on the left side
  fill(253, 166, 73); // Set the color for the circle
  arc(0, height / 2, 200, 200, HALF_PI, 3 * HALF_PI);

  // Draw the first triangle at the top
  fill(77, 180, 228); // Set the color for the first triangle
  triangle(width / 2, 0, width, 0, width, height / 2);

  // Draw the second triangle in the lower right corner
  fill(184, 60, 112); // Set the color for the second triangle
  triangle(width / 2, height, width, height / 2, width, height);
  
  save("figurePlacement.jpg");
}

void draw() {
  // No continuous drawing is needed
}

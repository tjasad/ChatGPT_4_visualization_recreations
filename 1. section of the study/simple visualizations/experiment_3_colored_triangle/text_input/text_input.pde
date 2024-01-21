void setup() {
  size(400, 400);  // Set the size of the canvas
  background(147, 201, 251);  // Set the background color to RGB(147, 201, 251)

  fill(251, 249, 147);  // Set the fill color for the triangle to RGB(251, 249, 147)
  noStroke();  // No border for the triangle

  // Calculate the points for the triangle, placed in the center of the canvas
  float x1 = width / 2;
  float y1 = height / 2 - 50;
  float x2 = x1 - 50;
  float y2 = height / 2 + 50;
  float x3 = x1 + 50;
  float y3 = y2;

  // Draw the triangle
  triangle(x1, y1, x2, y2, x3, y3);
  save("triangle.jpg");
}

void setup() {
  size(400, 400); // Set the size of the canvas
  background(147, 201, 251); // Set the background color using RGB values
  noStroke(); // Do not draw a stroke around shapes
}

void draw() {
  fill(251, 249, 147); // Set the fill color for the triangle using RGB values
  triangle(width/2, height/2 - 50, width/2 - 50, height/2 + 50, width/2 + 50, height/2 + 50); // Draw the triangle
  save("triangle.jpg");
}

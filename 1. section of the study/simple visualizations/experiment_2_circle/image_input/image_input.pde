void setup() {
  size(300, 300);  // Set the size of the canvas
  background(255); // Set the background color to white
}

void draw() {
  fill(0, 0, 255); // Set the fill color to blue
  noStroke();      // No border for the circle
  ellipse(150, 150, 200, 200); // Draw the circle
  save("circle.jpg");
}

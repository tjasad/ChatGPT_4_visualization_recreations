void setup() {
  size(300, 300);  // Set the size of the canvas to 300x300
  background(255);  // Set the background color to white
}

void draw() {
  fill(0, 0, 255);  // Set the fill color to blue (RGB)
  noStroke();       // No border for the circle
  ellipse(150, 150, 100, 100);  // Draw the circle at the center with a diameter of 100
  save("circle.jpg");
}

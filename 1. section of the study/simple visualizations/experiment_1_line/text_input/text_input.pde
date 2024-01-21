void setup() {
  size(300, 300); // Set the size of the canvas
  background(255); // Set the background color to white
}

void draw() {
  stroke(0); // Set the color of the line to black
  line(0, height / 2, width, height / 2); // Draw a horizontal line in the middle
  save("result.jpg");
}

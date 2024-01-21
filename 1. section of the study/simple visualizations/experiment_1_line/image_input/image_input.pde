void setup() {
  size(768, 768); // Set the size of the canvas to match the image
  background(255); // Set the background color to white
}

void draw() {
  stroke(0); // Set the line color to black
  strokeWeight(3); // Set the line thickness if needed
  line(0, height/2, width, height/2); // Draw a horizontal line in the middle of the canvas
  save("line.jpg");
}

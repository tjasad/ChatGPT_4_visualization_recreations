// Processing code to generate a similar image to the uploaded one

void setup() {
  size(400, 400); // Size of the canvas, can be adjusted to your requirements
  background(135, 206, 250); // RGB color for the sky blue background
}

void draw() {
  // Draw a yellow triangle in the center of the canvas
  fill(255, 255, 0); // RGB color for yellow
  noStroke(); // No border for the triangle
  triangle(width/2, height/4, width/4, 3*height/4, 3*width/4, 3*height/4);
  // The vertices of the triangle are set to be at the center top, bottom left, and bottom right
  
  noLoop(); // Stops draw loop since we do not need to animate anything
  save("triangle.jpg");
}

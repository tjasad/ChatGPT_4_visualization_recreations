void setup() {
  size(275, 275); // Set the canvas size to 275x275 pixels
  noLoop(); // Ensures that the draw() loop runs only once
}

void draw() {
  for (int i = 0; i < 11; i++) {
    int grayValue = int(map(i, 0, 10, 0, 255)); // Map the loop variable to a range from 0 to 255
    fill(grayValue); // Set the fill color to the current grayscale value
    rect((width / 11) * i, 0, width / 11, height); // Draw a rectangle for each shade
  }
  
  save("grayscale.jpg");
}

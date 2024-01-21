void setup() {
  size(800, 600); // Set the size of the canvas
  noFill(); // Ensure rectangles are not filled
}

void draw() {
  background(255); // Set a white background

  // Loop to draw 24 rectangles
  for (int i = 0; i < 24; i++) {
    // Randomize the position and size
    float x = random(width);
    float y = random(height);
    float w = random(20, 100); // Width between 20 and 100 pixels
    float h = random(20, 100); // Height between 20 and 100 pixels

    // Set color based on the iteration to create depth illusion
    if (i < 8) {
      stroke(200); // Light grey for the first 8 rectangles
    } else {
      stroke(0); // Black for the rest
    }

    // Draw the rectangle
    rect(x, y, w, h);
  }

  noLoop(); // Draw only once
  save("iteration_1.jpg");
}

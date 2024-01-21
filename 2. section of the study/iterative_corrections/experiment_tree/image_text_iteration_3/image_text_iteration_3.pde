void setup() {
  size(800, 600); // Set the size of the window
  background(255); // Set the background color to white
  stroke(0); // Set the stroke color to black
  float len = height / 3; // Increase initial length of the branch
  translate(width / 2, 0); // Move to the top middle
  drawBranch(0, 0, len, HALF_PI, 8); // Start the tree from this point
  save("iteration_3.jpg");
}

void draw() {
  // No continuous drawing is needed
}

void drawBranch(float x, float y, float len, float angle, int depth) {
  if (depth == 0) return;

  // Calculate the new branch's end x and y position
  float x2 = x + cos(angle) * len;
  float y2 = y + sin(angle) * len;

  // Draw the branch
  line(x, y, x2, y2);

  // Recursively draw the next branches
  drawBranch(x2, y2, len * 0.67, angle - QUARTER_PI, depth - 1); // Left branch
  drawBranch(x2, y2, len * 0.67, angle + QUARTER_PI, depth - 1); // Right branch
}

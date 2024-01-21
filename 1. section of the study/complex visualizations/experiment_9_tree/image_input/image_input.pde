void setup() {
  size(800, 600); // Set the size of the canvas
  background(255); // Set the background to white
}

void draw() {
  // Start the tree from the bottom of the screen
  drawBranch(width / 2, height, -PI / 2, 100, 10);
  noLoop(); // Stops draw() from looping
}

void drawBranch(float x, float y, float angle, float len, int depth) {
  if (depth == 0)
    return;

  // Calculate the end point of the branch
  float endX = x + len * cos(angle);
  float endY = y + len * sin(angle);

  // Draw the line
  line(x, y, endX, endY);

  // Reduce the length of the branch
  len *= 0.7;

  // Draw the two new branches
  drawBranch(endX, endY, angle - PI / 6, len, depth - 1); // Left branch
  drawBranch(endX, endY, angle + PI / 6, len, depth - 1); // Right branch
}

void setup() {
  size(800, 600);
  stroke(0);
}

void draw() {
  background(255);
  drawBranch(width / 2, 0, height / 4, 0, 8);
  noLoop(); // Stops the draw loop
}

void drawBranch(float x, float y, float len, float angle, int depth) {
  if (depth == 0) {
    //save("tree.jpg");
    return;
  }

  float endX = x + len * cos(radians(angle));
  float endY = y + len * sin(radians(angle));

  line(x, y, endX, endY);

  drawBranch(endX, endY, len * 0.67, angle - 45, depth - 1);
  drawBranch(endX, endY, len * 0.67, angle + 45, depth - 1);
}

void setup() {
  size(800, 600);
  background(255);
  drawTree(width / 2, 0, 210, PI/2, 8);
}

void drawTree(float x, float y, float branchLength, float angle, int depth) {
  if (depth == 0) {
    //save("tree.jpg");
    return;
  }

  float xEnd = x + cos(angle) * branchLength;
  float yEnd = y + sin(angle) * branchLength;

  stroke(0);
  line(x, y, xEnd, yEnd);

  drawTree(xEnd, yEnd, branchLength * 0.7, angle - PI/4, depth - 1);
  drawTree(xEnd, yEnd, branchLength * 0.7, angle + PI/4, depth - 1);
  
}

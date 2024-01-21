PShape cube;

void setup() {
  size(400, 400, P3D);
  background(255);
  fill(0);
  noStroke();

  // Define the cube dimensions
  float cubeSize = 150;
  cube = createShape(BOX, cubeSize);
}

void draw() {
  background(255);
  drawSplitCube();
}

void drawSplitCube() {
  // Define the rotations for each quadrant
  float[] rotations = {QUARTER_PI, -QUARTER_PI, QUARTER_PI, -QUARTER_PI};
  
  // Draw each quadrant
  for (int i = 0; i < 4; i++) {
    pushMatrix();
    translate(width * (i % 2) / 2 + width / 4, height * (i / 2) / 2 + height / 4, 0);
    if (i % 2 == 0) {
      rotateY(rotations[i]);
    } else {
      rotateX(rotations[i]);
    }
    shape(cube);
    popMatrix();
  }
  
  save("iteration_1.jpg");
}

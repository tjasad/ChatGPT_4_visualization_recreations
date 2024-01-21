PShape cube;
float angleX, angleY;

void setup() {
  size(1000, 1000, P3D); // Canvas size
  cube = createShape(BOX, 330); // Cube size
  cube.setFill(color(0)); // Cube color: black
  angleX = random(TWO_PI); // Random rotation angle X
  angleY = random(TWO_PI); // Random rotation angle Y
  noLoop(); // Render only once
}

void draw() {
  background(255); // Background color: white

  // Position and rotate the cubes in each quadrant
  drawCubes();

  // Draw the white dividing lines on top of the cubes
  drawDividingLines();
  save("iteration_5.jpg");
}

void drawCubes() {
  // Top-left quadrant
  pushMatrix();
  translate(width * 0.35, height * 0.35, -125);
  rotateX(angleX);
  rotateY(angleY);
  shape(cube);
  popMatrix();

  // Top-right quadrant
  pushMatrix();
  translate(width * 0.65, height * 0.35, -125);
  rotateX(-angleX);
  rotateY(-angleY);
  shape(cube);
  popMatrix();

  // Bottom-left quadrant
  pushMatrix();
  translate(width * 0.35, height * 0.65, -125);
  rotateX(angleY);
  rotateY(angleX);
  shape(cube);
  popMatrix();

  // Bottom-right quadrant
  pushMatrix();
  translate(width * 0.65, height * 0.65, -125);
  rotateX(-angleY);
  rotateY(-angleX);
  shape(cube);
  popMatrix();
}

void drawDividingLines() {
  stroke(255); // Line color: white
  strokeWeight(4); // Line thickness
  // Vertical line
  line(width * 0.5, 0,100, width * 0.5, height,100);
  // Horizontal line
  line(0, height * 0.5,100, width, height * 0.5, 100);
}

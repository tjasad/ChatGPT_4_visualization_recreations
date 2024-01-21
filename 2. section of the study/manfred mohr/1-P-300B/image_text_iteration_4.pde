PShape cube;
float angleX, angleY;

void setup() {
  size(1000, 1000, P3D); // Slightly reduced canvas size for a better proportion
  cube = createShape(BOX, 310); // Adjusted cube size to be a bit smaller
  cube.setFill(color(0)); // Set cube color to black
  // Generate random angles for rotation
  angleX = random(TWO_PI);
  angleY = random(TWO_PI);
  noLoop(); // Ensure only one visualization is created
}

void draw() {
  background(255); // Set background color to white

  // Translate and rotate the cube for each quadrant
  // Positioning cubes closer to each other

  // Top-left quadrant
  pushMatrix();
  translate(width * 0.35, height * 0.35, 0);
  rotateX(angleX);
  rotateY(angleY);
  shape(cube);
  popMatrix();

  // Top-right quadrant
  pushMatrix();
  translate(width * 0.65, height * 0.35, 0);
  rotateX(-angleX);
  rotateY(-angleY);
  shape(cube);
  popMatrix();

  // Bottom-left quadrant
  pushMatrix();
  translate(width * 0.35, height * 0.65, 0);
  rotateX(angleY);
  rotateY(angleX);
  shape(cube);
  popMatrix();

  // Bottom-right quadrant
  pushMatrix();
  translate(width * 0.65, height * 0.65, -30);
  rotateX(-angleY);
  rotateY(-angleX);
  shape(cube);
  popMatrix();

  // Draw the horizontal and vertical divide in white
  stroke(255);
  strokeWeight(4); // Maintain stroke weight for visibility
  line(width * 0.5, 0, width * 0.5, height);
  line(0, height * 0.5, width, height * 0.5);
  save("iteration_4.jpg");
}

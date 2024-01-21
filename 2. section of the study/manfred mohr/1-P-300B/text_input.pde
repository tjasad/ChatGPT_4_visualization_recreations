PShape cube;

void setup() {
  size(400, 400, P3D); // Set the size of the window and use 3D rendering
  cube = createShape(BOX, 100); // Create a cube shape with 100 pixels size
  cube.setFill(color(0)); // Set cube color to black
}

void draw() {
  background(255); // Set background color to white
  
  // Draw the first quadrant (top-left) with a unique rotation
  pushMatrix();
  translate(width * 0.25, height * 0.25, -50);
  rotateX(-QUARTER_PI);
  rotateY(QUARTER_PI);
  shape(cube);
  popMatrix();

  // Draw the second quadrant (top-right) with a different rotation
  pushMatrix();
  translate(width * 0.75, height * 0.25, -50);
  rotateX(QUARTER_PI);
  rotateY(QUARTER_PI);
  shape(cube);
  popMatrix();

  // Draw the third quadrant (bottom-left) with the same rotation as the second quadrant
  pushMatrix();
  translate(width * 0.25, height * 0.75, -50);
  rotateX(QUARTER_PI);
  rotateY(QUARTER_PI);
  shape(cube);
  popMatrix();

  // Draw the fourth quadrant (bottom-right) with a different rotation
  pushMatrix();
  translate(width * 0.75, height * 0.75, -50);
  rotateX(-QUARTER_PI);
  rotateY(-QUARTER_PI);
  shape(cube);
  popMatrix();

  // Draw the horizontal and vertical divide in white
  stroke(255);
  strokeWeight(2);
  line(width * 0.5, 0, width * 0.5, height);
  line(0, height * 0.5, width, height * 0.5);
  
  save("iteration_1.jpg");
}

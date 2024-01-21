PShape cube;
float angleX, angleY;

void setup() {
  size(400, 400, P3D); // Set the size of the window and use 3D rendering
  cube = createShape(BOX, 200); // Create a larger cube shape to display parts in each quadrant
  cube.setFill(color(0)); // Set cube color to black
  // Generate random angles for rotation
  angleX = random(TWO_PI);
  angleY = random(TWO_PI);
}

void draw() {
  background(255); // Set background color to white

  // Translate and rotate the cube for each quadrant
  // Each quadrant shows a different part of the same cube

  // Top-left quadrant
  pushMatrix();
  translate(width * 0.25, height * 0.25, -50);
  rotateX(angleX);
  rotateY(angleY);
  shape(cube);
  popMatrix();

  // Top-right quadrant
  pushMatrix();
  translate(width * 0.75, height * 0.25, -50);
  rotateX(-angleX);
  rotateY(-angleY);
  shape(cube);
  popMatrix();

  // Bottom-left quadrant
  pushMatrix();
  translate(width * 0.25, height * 0.75, -50);
  rotateX(angleY);
  rotateY(angleX);
  shape(cube);
  popMatrix();

  // Bottom-right quadrant
  pushMatrix();
  translate(width * 0.75, height * 0.75, -50);
  rotateX(-angleY);
  rotateY(-angleX);
  shape(cube);
  popMatrix();

  // Draw the horizontal and vertical divide in white
  stroke(255);
  strokeWeight(2);
  line(width * 0.5, 0, width * 0.5, height);
  line(0, height * 0.5, width, height * 0.5);
  
  save("iteration_2.jpg");
}

PShape cube;
float angleX, angleY;

void setup() {
  size(800, 800, P3D); // Enlarged the size of the window for better visualization
  cube = createShape(BOX, 400); // Adjusted cube size to fit the enlarged canvas
  cube.setFill(color(0)); // Set cube color to black
  // Generate random angles for rotation
  angleX = random(TWO_PI);
  angleY = random(TWO_PI);
  noLoop(); // Ensure only one visualization is created
}

void draw() {
  background(255); // Set background color to white

  // Translate and rotate the cube for each quadrant
  // Each quadrant shows a different part of the same cube

  // Top-left quadrant
  pushMatrix();
  translate(width * 0.25, height * 0.25, -200);
  rotateX(angleX);
  rotateY(angleY);
  shape(cube);
  popMatrix();

  // Top-right quadrant
  pushMatrix();
  translate(width * 0.75, height * 0.25, -200);
  rotateX(-angleX);
  rotateY(-angleY);
  shape(cube);
  popMatrix();

  // Bottom-left quadrant
  pushMatrix();
  translate(width * 0.25, height * 0.75, -200);
  rotateX(angleY);
  rotateY(angleX);
  shape(cube);
  popMatrix();

  // Bottom-right quadrant
  pushMatrix();
  translate(width * 0.75, height * 0.75, -200);
  rotateX(-angleY);
  rotateY(-angleX);
  shape(cube);
  popMatrix();

  // Draw the horizontal and vertical divide in white
  stroke(255);
  strokeWeight(4); // Increased stroke weight for better visibility
  line(width * 0.5, 0, width * 0.5, height);
  line(0, height * 0.5, width, height * 0.5);
  
  save("iteration_3.jpg");
  
  noLoop(); 
}

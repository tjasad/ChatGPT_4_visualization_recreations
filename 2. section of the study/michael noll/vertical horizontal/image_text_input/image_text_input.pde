// Define variables to store the current point
float x, y;
// Define the range for the x and y coordinates
int rangeX = 200;
int rangeY = 500;

void setup() {
  // Set the canvas size according to the requirement
  size(400, 1000); 
  background(255); // Set the background to white
  stroke(0); // Set the line color to black
  smooth(); // Smooth lines
  // Initial random point within the range, adjusted for the new canvas size
  x = random(-rangeX, rangeX);
  y = random(-rangeY, rangeY);
  // Translate the origin to the center of the canvas
  translate(width/2, height/2);
}

void draw() {
  // Loop to draw 100 lines
  for (int i = 0; i < 100; i++) {
    // Save the old coordinates
    float oldX = x;
    float oldY = y;
    // Decide whether to change the x or y coordinate based on the iteration number
    if (i % 2 == 0) {
      // Change the x coordinate
      x = random(-rangeX, rangeX);
    } else {
      // Change the y coordinate
      y = random(-rangeY, rangeY);
    }
    // Draw a line from the old point to the new point, ensuring it remains within the canvas
    line(oldX + width/2, oldY + height/2, x + width/2, y + height/2);
  }
  
  // No loop after drawing is done
  noLoop();
  save("iteration_2.jpg");
}

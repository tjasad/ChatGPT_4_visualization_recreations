int numPoints = 100;
float sd_x = 150; // Standard deviation for Gaussian distribution on the X-axis
int canvasSize = 1024;

void setup() {
  size(1024, 1024);
  background(255);
  smooth();
  stroke(0);

  float x, y;
  float x_prev = canvasSize / 2; // Start from the middle of the canvas on the X-axis
  float y_prev = 0;

  for (int i = 0; i < numPoints; i++) {
    // Calculate y using the quadratic function provided
    y = (i*i + 5*i);
    
    // If y exceeds the height of the canvas, reflect it back to the bottom
    if (y > height) {
      y = y % height;
    }

    // Generate a Gaussian random number for x
    x = (float) (randomGaussian() * sd_x + width/2);

    // Draw line from previous point to the new point
    line(x_prev, y_prev, x, y);

    // Update previous point coordinates to the current one
    x_prev = x;
    y_prev = y;
  }
  
  save("iteration_1.jpg");
}

void draw() {
  // No need to draw continuously, the artwork is static
  noLoop();
}

int numPoints = 100;  // Total number of points
float[] x = new float[numPoints];  // Array to store x-coordinates
float[] y = new float[numPoints];  // Array to store y-coordinates

void setup() {
  size(1024, 1024);  // Set canvas size
  background(255);   // Set background color to white

  // Initialize points
  for (int i = 0; i < numPoints; i++) {
    x[i] = width/2 + randomGaussian() * 150;  // Gaussian randomness for x-coordinate
    y[i] = calculateY(i);  // Calculate y-coordinate using the given formula

    // Reflection mechanism
    if (y[i] > height) {
      y[i] = 2 * height - y[i];
    }
  }

  // Draw lines between points
  stroke(0);  // Set line color to black
  for (int i = 1; i < numPoints; i++) {
    line(x[i-1], y[i-1], x[i], y[i]);
  }
  
  save("iteration_1.jpg");
}

// Function to calculate y-coordinate based on the given formula
float calculateY(int i) {
  return (i * i) + 5 * i;
}

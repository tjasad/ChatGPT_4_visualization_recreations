// Define variables to control the ellipse sizes and rotation angles
float[] radii;
float[] rotationAngles;

void setup() {
  // Set the size of the canvas
  size(700, 700);
  
  // Initialize the radii and angles for three sets of ellipses
  radii = new float[]{100, 200, 300}; // These initial values can be adjusted
  rotationAngles = new float[]{0, 0, 0}; // Start angles at 0
}

void draw() {
  // Clear the background to start drawing the new frame
  background(255); // White background
  
  // Translate to the center of the canvas
  translate(width/2, height/2);
  
  // Loop to draw each set of ellipses
  for (int i = 0; i < radii.length; i++) {
    // Save the current state of the matrix
    pushMatrix();
    
    // Rotate by the current angle
    rotate(rotationAngles[i]);
    
    // Draw the ellipse at the current radius
    noFill(); // Don't fill the ellipses
    stroke(0); // Set the stroke color to black
    ellipse(0, 0, radii[i]*2, radii[i]*2); // Multiply by 2 for diameter
    
    // Restore the matrix state
    popMatrix();
    
    // Update the rotation angle and radius for the next frame
    rotationAngles[i] += 0.01; // This value controls the rotation speed
    radii[i] += 0.5; // This value controls the expansion speed
    
    // Reset if the radius exceeds the canvas width
    if (radii[i] > width) {
      radii[i] = 100; // Reset to initial radius or another value as needed
    }
  }
}

int numCircles = 50; // The number of circles to draw
float angleOffset = 0.0; // The angle by which each circle is rotated relative to the previous one
float maxRadius; // The maximum radius of the circles
float radiusIncrement = 2.0; // How much the radius increases with each frame
float initialRadius = 20.0; // The initial radius of the innermost circle
float rotationIncrement = TWO_PI / numCircles; // The rotation increment for each circle

void setup() {
  size(800, 800);
  maxRadius = min(width, height) * 0.5; // Set the max radius based on the size of the canvas
  noFill();
  stroke(0);
  strokeWeight(2);
}

void draw() {
  
  background(255);
  translate(width/2, height/2); // Move to the center of the canvas

  for (int i = 0; i < numCircles; i++) {
    float radius = initialRadius + i * radiusIncrement;
    if (radius > maxRadius) {
      radius = initialRadius; // Reset the radius if it exceeds the maximum value
    }

    pushMatrix();
    rotate(angleOffset + i * rotationIncrement);
    ellipse(0, 0, radius * 2, radius * 2);
    popMatrix();
  }

  angleOffset += 0.01; // Increment the angle for the next frame
  initialRadius += radiusIncrement; // Increase the initial radius for the next frame
  
}

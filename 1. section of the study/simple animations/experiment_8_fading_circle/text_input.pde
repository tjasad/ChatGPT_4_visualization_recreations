int maxSize = 200; // Maximum size of the circle
int size = 0;      // Initial size of the circle
int alpha = 255;   // Initial alpha value (opacity)

void setup() {
  size(800, 600); // Set the size of the window
  noStroke();     // No outline for the circle
}

void draw() {
    background(255, 189, 0); // Set the background color
  
    // Calculate the current alpha value (fading effect)
    float currentAlpha = map(size, 0, maxSize, 255, 0);
  
    // Set the fill color with the current alpha
    fill(255, 0, 84, currentAlpha);
  
    // Draw the circle at the center of the frame
    ellipse(width / 2, height / 2, size, size);
  
    // Increase the size of the circle
    size += 1;
  
    // Reset the size and alpha when the circle reaches the maximum size
    if (size > maxSize) {
      size = 0;
      alpha = 255;
    }
  
}

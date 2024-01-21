int radius = 0;
int alphaValue = 255;

void setup() {
  size(800, 800);
  noFill();
  noStroke();
}

void draw() {
  // Set the background color
  background(255, 189, 0);
  
  // Set the color of the circle including the alpha for fading
  fill(255, 0, 84, alphaValue);
  
  // Draw the circle at the center of the canvas
  ellipse(width/2, height/2, radius, radius);
  
  // Increase the radius for the next frame
  radius += 2;
  
  // Decrease the alpha value to fade out
  alphaValue -= 1;
  
  // Reset the animation if the circle is fully faded
  if (alphaValue < 0) {
    alphaValue = 255;
    radius = 0;
  }
}

float circleSize = 10;
int fadeValue = 255;

void setup() {
  size(400, 400);
  noStroke();
}

void draw() {
  
  // Draw the fading and expanding circle
  background(255, 189, 0);
  fill(255, 0, 84, fadeValue);
  ellipse(width / 2, height / 2, circleSize, circleSize);
  
  // Increase the circle size
  circleSize += 1.5;
  
  // Decrease the fade value
  fadeValue -= 0.5;
  
  // Stop the animation when the fade value is less than or equal to 0
  if (fadeValue <= 0) {
    noLoop();
  }
  
  //save image frames
  if(frameCount%30 == 0 && frameCount<400) {
    saveFrame("fading-###.png");
  }
  
}

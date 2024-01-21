// Processing code for creating a fading circle animation

int radius = 50;  // radius of the circle
int x, y;         // x and y coordinates of the circle's center
int alpha = 0;    // transparency of the circle

void setup() {
  size(200, 200);   // size of the window
  x = width / 2;
  y = height / 2;
  noStroke();       // no outline on the circle
  frameRate(30);    // set the frame rate to 30 frames per second
}

void draw() {
  
  background(255, 204, 0); // set background color to yellow
  fill(255, 0, 0, alpha);  // set fill color to red with the current alpha value
  ellipse(x, y, radius*2, radius*2); // draw the circle
  if (alpha < 255) {
    alpha += 2;   // incrementally increase the alpha value
  }
  
}

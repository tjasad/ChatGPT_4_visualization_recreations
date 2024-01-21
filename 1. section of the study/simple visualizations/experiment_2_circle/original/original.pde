float circleSize = 100; // Diameter of the circle

void setup() {
  size(300, 300); 
  background(255);
  noStroke(); // No outlines on the shapes
}

void draw() {

  fill(0, 0, 255); 
  circle(width / 2, height / 2, circleSize);
  save("circle.jpg");

}

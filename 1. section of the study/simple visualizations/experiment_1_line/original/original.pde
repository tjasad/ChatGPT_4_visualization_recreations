float circleSize = 100; // Diameter of the circle

void setup() {
  size(300, 300); 
  background(255);
}

void draw() {
  line(0, height/2, 300, height/2);
  save("line.jpg");
}

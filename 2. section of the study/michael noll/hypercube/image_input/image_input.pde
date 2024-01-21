int angle = 0;

void setup() {
  size(640, 360, P3D);
}

void draw() {
  background(0);
  lights();
  fill(255);
  noStroke();
  translate(width/2, height/2);
  rotateX(radians(angle));
  rotateY(radians(angle));
  box(100);
  angle++;
}

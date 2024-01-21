float scalar = 100;

void setup() {
  size(700,450);
  noStroke();
}

void draw() {
  background(0);

  
  fill(255);

  fill(76, 153, 186); // blue
  ellipse(width/3*2, height/4*3, scalar, scalar);
  ellipse(width/3, height/4, scalar, scalar);
  
  fill(227, 151, 50); // orange 
  ellipse(width/3, height/4*2, scalar, scalar);
  ellipse(width/3, height/4*3, scalar, scalar);
  
  save("multipleCircles.jpg");
  
}

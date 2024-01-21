float numShapes = 8;
float angle = 360 / numShapes;
float radius = 200;
float innerRadius = 40;
float middleRadius = 70;
float outerRadius = 100;

void setup() {
  size(700, 700);
  background(255);
  noFill();
  stroke(0);
  strokeWeight(2);
}

void draw() {
  
  background(255, 10);
  
  translate(width / 2, height / 2);
  for (int i = 0; i < numShapes; i++) {
    push();
    rotate(radians(angle * i));
    ellipse(0, 30, innerRadius, innerRadius+50);
    ellipse(0, 100, middleRadius, middleRadius+50);
    ellipse(0, 100, outerRadius, outerRadius);
    pop();
  }

  outerRadius = (outerRadius + 1) ;
  innerRadius = (innerRadius + 2) ;
  middleRadius = (middleRadius + 0.5);
  
  if(outerRadius > width + 50){
    outerRadius=1;
    innerRadius=1;
    middleRadius=1;
  }
  
  //save image frames
  if(frameCount%50 == 0 && frameCount<551) {
    saveFrame("fading-###.png");
  }
}

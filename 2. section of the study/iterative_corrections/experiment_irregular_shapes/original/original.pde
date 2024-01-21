void setup() {
  size(500, 500);
}

void draw() {
  blendMode(BLEND);
  background(255);
  //noStroke();
  blendMode(MULTIPLY);
  noStroke();
  translate(width/2,height/2);
  fill(162, 210, 255);
  drawShape(10,20,50,100);
  fill(189, 224, 254);
  drawShape(15,60,25,120);
  fill(255, 175, 204);
  drawShape(12,45,15,150);
  fill(205, 180, 219);
  drawShape(16,60,130,10);
  noLoop();
  save("irregularShapes.jpg");
}


void drawShape(int vNnum,int nm,int sm,int fcm){
  push();
  rotate(frameCount/fcm);
  float dr = TWO_PI/vNnum;
  beginShape();
  
  for(int i = 0; i  < vNnum + 3; i++){
    int ind = i%vNnum;
    float rad = dr *ind;
    float r = height*0.3 + noise(frameCount/nm + ind) * height*0.1 + sin(frameCount/sm + ind)*height*0.05;
    curveVertex(cos(rad)*r, sin(rad)*r);
  }
  endShape();
  pop();
}

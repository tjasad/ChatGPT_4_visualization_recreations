float scale;

void setup() {
  size(275, 275);
  noStroke();
  scale = width/20;
}

void draw() { 
  
  for (int i = 0; i < 300; i+=25) {
    fill(i);
    rect(i, 0, 25, height);
  }
  
}

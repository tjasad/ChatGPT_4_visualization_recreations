void setup() {
  size(400, 400);
  background(147, 201, 251);
  noStroke();
}

void draw() {
 
  fill(251, 249, 147);  
  float x1 = width / 2;  
  float y1 = height / 2 - 100; 

  float x2 = width / 2 - 100;  
  float y2 = height / 2 + 100; 

  float x3 = width / 2 + 100; 
  float y3 = height / 2 + 100;
  
  triangle(x1, y1, x2, y2, x3, y3);
  save("color_triangle.jpg");
}

void setup() {
  size(400, 400);
  noStroke();
}

void draw() {
  background(244, 231, 131);
  
  // Draw the first triangle
  fill(77, 180, 228); //blue
  triangle(50, -20, 260, -10, 150, 160);
  
  // Draw the second triangle (partially off-screen)
  fill(184, 60, 112); // purple
  triangle(220, 180, 450, 200, 310, 430);
  
  fill(253, 166, 73); // orange
  ellipse(0, height / 2, 200, 200);
  noFill();
  arc(50, height / 2, 100, 100, PI / 2, -PI / 2);
  
  save("figurePlacement.jpg");
}

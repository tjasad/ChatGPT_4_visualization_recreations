void setup() {
  size(500, 500);
  noStroke(); // No borders around shapes
  background(255); // White background
}

void draw() {
  // No loop to mimic the static image
  noLoop();
  
  // Create 20 ellipses with random positions, sizes, and colors
  for (int i = 0; i < 20; i++) {
    float x = random(width);
    float y = random(height);
    float w = random(20, 100); // Random width between 20 and 100
    float h = random(20, 100); // Random height between 20 and 100
    float r = random(255);
    float g = random(255);
    float b = random(255);
    float a = random(50, 150); // Semi-transparent
    
    fill(r, g, b, a);
    ellipse(x, y, w, h);
  }
  
  save("irregularShapes.jpg");
}

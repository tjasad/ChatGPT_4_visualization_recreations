// Define the colors with an alpha value for transparency
color[] colors = {
  color(162, 210, 255, 128), // Slightly transparent
  color(189, 224, 254, 128),
  color(255, 175, 204, 128),
  color(205, 180, 219, 128)
};

void setup() {
  size(600, 600); // Increased canvas size
  noLoop();
  noStroke();
  smooth();
}

void draw() {
  background(255); // White background

  for (int i = 0; i < colors.length; i++) {
    fill(colors[i]);
    
    // Start the shape
    beginShape();
    float startAngle = random(TWO_PI);
    float endAngle = startAngle + TWO_PI;
    float angle = startAngle;
    float minRadius = width * 0.1;
    float maxRadius = width * 0.3;
    // Smooth the shape's curve by adding points before and after
    float x0 = width / 2 + cos(startAngle - random(PI/8, PI/4)) * random(minRadius, maxRadius);
    float y0 = height / 2 + sin(startAngle - random(PI/8, PI/4)) * random(minRadius, maxRadius);
    curveVertex(x0, y0);
    
    // Create vertices for the shape
    while(angle < endAngle) {
      float radius = random(minRadius, maxRadius);
      float x = width / 2 + cos(angle) * radius;
      float y = height / 2 + sin(angle) * radius;
      curveVertex(x, y);
      // Increase the angle by a random step size each time
      angle += random(PI/8, PI/4);
    }

    // Smooth the shape's curve by adding points before and after
    float x1 = width / 2 + cos(endAngle + random(PI/8, PI/4)) * random(minRadius, maxRadius);
    float y1 = height / 2 + sin(endAngle + random(PI/8, PI/4)) * random(minRadius, maxRadius);
    curveVertex(x1, y1);

    // End the shape
    endShape(CLOSE);
  }
  
  save("iteration_6.jpg");
}

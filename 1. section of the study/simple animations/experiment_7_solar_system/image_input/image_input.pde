int numPlanets = 4; // Adjust the number of planets
float[] angle = new float[numPlanets];
float[] distance = new float[numPlanets];
float[] diameter = new float[numPlanets];
color[] colors = new color[numPlanets];

void setup() {
  size(500, 500);
  noStroke();
  // Initialize planet properties
  for (int i = 0; i < numPlanets; i++) {
    angle[i] = random(TWO_PI); // Start angle
    distance[i] = random(50, 200); // Distance from the center
    diameter[i] = random(10, 50); // Diameter of the planet
    colors[i] = color(random(255), random(255), random(255)); // Color
  }
}

void draw() {
  background(0); // Black background
  translate(width/2, height/2); // Move to the center
  
  // Draw the central star
  fill(255, 204, 0);
  ellipse(0, 0, 60, 60);
  
  // Draw planets
  for (int i = 0; i < numPlanets; i++) {
    float x = cos(angle[i]) * distance[i];
    float y = sin(angle[i]) * distance[i];
    fill(colors[i]);
    ellipse(x, y, diameter[i], diameter[i]);
    angle[i] += 0.01 + i * 0.005; // Increment the angle for the next frame
  }
}

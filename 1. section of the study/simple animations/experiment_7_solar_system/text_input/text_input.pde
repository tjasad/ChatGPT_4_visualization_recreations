void setup() {
  size(800, 800); // Set the size of the window
  noStroke(); // No outline for the circles
}

void draw() {
  background(0, 48, 73); // Set the background color

  // Draw the sun
  fill(255, 200, 0); // Yellow color for the sun
  ellipse(width/2, height/2, 100, 100); // Draw the sun at the center

  // Draw the orbiting planets
  drawPlanet(150, 0.02, color(247, 127, 0)); // Orange planet
  drawPlanet(220, 0.015, color(214, 40, 40)); // Red planet
  drawPlanet(300, 0.01, color(252, 191, 73)); // Light orange planet
  drawPlanet(380, 0.005, color(234, 226, 183)); // Pale yellow planet
}

void drawPlanet(float orbitRadius, float speed, int planetColor) {
  float angle = millis() * speed; // Determine the angle based on time and speed
  float x = width/2 + orbitRadius * cos(angle); // Calculate x-coordinate
  float y = height/2 + orbitRadius * sin(angle); // Calculate y-coordinate
  
  fill(planetColor); // Set the color for the planet
  ellipse(x, y, 30, 30); // Draw the planet
}

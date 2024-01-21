int numPlanets = 4;
float[] angle = new float[numPlanets];
float[] distances = new float[numPlanets];
float[] diameters = new float[numPlanets];
color[] colors = new color[numPlanets];
float[] speeds = new float[numPlanets];

void setup() {
  size(600, 600); // Set the size of the window
  smooth();
  // Initialize planet properties
  colors[0] = color(247, 127, 0);
  colors[1] = color(214, 40, 40);
  colors[2] = color(252, 191, 73);
  colors[3] = color(234, 226, 183);
  
  distances[0] = 100;
  distances[1] = 150;
  distances[2] = 200;
  distances[3] = 250;
  
  diameters[0] = 20;
  diameters[1] = 30;
  diameters[2] = 40;
  diameters[3] = 50;
  
  speeds[0] = 0.02;
  speeds[1] = 0.015;
  speeds[2] = 0.01;
  speeds[3] = 0.005;
}

void draw() {
  background(0, 48, 73); // Set the background color
  translate(width/2, height/2); // Move to the center of the window
  
  // Draw the sun
  fill(255, 200, 0);
  ellipse(0, 0, 100, 100);
  
  // Draw the planets
  for (int i = 0; i < numPlanets; i++) {
    pushMatrix();
    rotate(angle[i]);
    translate(distances[i], 0);
    fill(colors[i]);
    ellipse(0, 0, diameters[i], diameters[i]);
    popMatrix();
    angle[i] += speeds[i];
  }
}

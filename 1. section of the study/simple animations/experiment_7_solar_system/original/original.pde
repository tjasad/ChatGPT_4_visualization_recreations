
int numPlanets = 4;  // Number of planets
float[] planetRadius = {8,12,20,15};  // Array to store the radii of the planets
float[] planetAngle = {3.81, 2.26, 4.19, 1.84};   // Array to store the initial angles for planet rotation
float[] planetSpeed = {0.0277,0.0130,0.0244,0.0128};   // Array to store the speeds of planet rotation
int[][] colors = {{247, 127, 0},{214, 40, 40}, {252, 191, 73}, {234, 226, 183}};
float sunRadius = 70;

void setup() {
  size(500, 500);
  noStroke();
 
  // Set up the sun
  fill(255, 200, 0);  // Yellow color for the sun
  ellipse(width / 2, height / 2, sunRadius * 2, sunRadius * 2);
  
}

void draw() {
  
  background(0, 48, 73);  // Black background

  fill(255, 200, 0);  // Yellow color for the sun
  ellipse(width / 2, height / 2, sunRadius, sunRadius);

  // Draw and update the planets
  for (int i = 0; i < numPlanets; i++) {
    float planetX = width / 2 + cos(planetAngle[i]) * (i + 1) * 50;
    float planetY = height / 2 + sin(planetAngle[i]) * (i + 1) * 50;
    
    fill(colors[i][0], colors[i][1], colors[i][2]);  // Random color for each planet
    ellipse(planetX, planetY, planetRadius[i] * 2, planetRadius[i] * 2);
    
    // Update the angle for the next frame to create rotation
    planetAngle[i] += planetSpeed[i];
  }
  

  //save image frames
  if(frameCount%25 == 0 && frameCount<400) {
    saveFrame("solar-system-###.png");
  }

}

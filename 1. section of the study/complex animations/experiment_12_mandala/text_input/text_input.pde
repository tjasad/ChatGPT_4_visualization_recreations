int numEllipses = 10; // Number of ellipses in each set
float[] radii = new float[3]; // Radii of the three sets of ellipses

void setup() {
  size(600, 600);
  for (int i = 0; i < radii.length; i++) {
    radii[i] = 20 * (i + 1); // Initialize radii
  }
}

void draw() {
  background(255);
  translate(width/2, height/2); // Move origin to center of canvas

  for (int i = 0; i < numEllipses; i++) {
    for (int j = 0; j < radii.length; j++) {
      float angle = TWO_PI / numEllipses * i + frameCount * 0.01;
      float x = cos(angle) * radii[j];
      float y = sin(angle) * radii[j];
      ellipse(x, y, 10, 10); // Draw ellipse
    }
  }

  for (int i = 0; i < radii.length; i++) {
    radii[i] += 0.5; // Increase radii
    if (radii[i] > width / 2) {
      radii[i] = 20 * (i + 1); // Reset radius if it exceeds half the width
    }
  }
}

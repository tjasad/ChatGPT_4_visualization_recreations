int numWaves = 15; // Number of sine waves
float[] frequencies = new float[numWaves];
float[] amplitudes = new float[numWaves];

void setup() {
  size(800, 600); // Set the size of the window
  background(0); // Set background to black

  // Initialize frequencies and amplitudes for each wave
  for (int i = 0; i < numWaves; i++) {
    frequencies[i] = random(0.01, 0.1); // Random frequency
    amplitudes[i] = random(20, 80); // Random amplitude
  }
  
  drawWaves();
  save("waves.jpg");
}

void drawWaves() {
  stroke(255); // Set line color to white
  noFill();

  // Draw each wave
  for (int j = 0; j < numWaves; j++) {
    float frequency = frequencies[j];
    float amplitude = amplitudes[j];
    beginShape();
    for (int x = 0; x < width; x++) {
      float y = height / 2 + sin(x * frequency) * amplitude;
      vertex(x, y);
    }
    endShape();
  }
}

void draw() {
  // No continuous drawing needed for static image
}

int numWaves = 15; // Number of sine waves
float[] amplitudes = new float[numWaves]; // Amplitudes of sine waves
float[] frequencies = new float[numWaves]; // Frequencies of sine waves

void setup() {
  size(600, 400); // Set the size of the window
  noLoop(); // No need to loop since the image is static

  // Initialize amplitudes and frequencies
  for (int i = 0; i < numWaves; i++) {
    amplitudes[i] = random(10, 30); // Random amplitude between 10 and 30
    frequencies[i] = random(0.05, 0.2); // Random frequency between 0.05 and 0.2
  }
}

void draw() {
  background(255); // Set background to white
  stroke(0); // Set line color to black

  // Draw each sine wave
  for (int i = 0; i < numWaves; i++) {
    beginShape();
    for (int x = 0; x < width; x++) {
      float y = height/2 + sin(x * frequencies[i]) * amplitudes[i];
      vertex(x, y);
    }
    endShape();
  }
  
  save("vawe.jpg");
  noLoop();
}

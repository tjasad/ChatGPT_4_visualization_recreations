int numWaves = 10;
float waveSpacing = 20;
float amplitude = 50;
float frequency = 0.2;

void setup() {
  size(600, 400);
  background(255);
  stroke(0);
  noFill();
  
  for (int i = 0; i < numWaves; i++) {
    float yOffset = i * waveSpacing;
    beginShape();
    for (float x = 0; x < width; x++) {
      float y = yOffset + amplitude * sin(frequency * x);
      vertex(x, y);
    }
    endShape();
  }
  
  save("wave.jpg");
}

void draw() {
  // No continuous drawing needed
}

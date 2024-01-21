float[] angles;
float[] amplitudes;
float[] frequencies;

void setup() {
  size(600, 400);
  background(255);

  int numWaves = 15;
  angles = new float[numWaves];
  amplitudes = new float[numWaves];
  frequencies = new float[numWaves];

  for (int i = 0; i < numWaves; i++) {
    angles[i] = 0;
    amplitudes[i] = random(50, 150);
    frequencies[i] = random(0.5, 0.1);
  }
}

void draw() {
  float centerY = height / 2;

  for (int i = 0; i < angles.length; i++) {
    float x = map(angles[i], 0, PI * 10, 0, width);
    float y = centerY + sin(angles[i] * frequencies[i]) * amplitudes[i];

    stroke(0);
    line(x - 1, y, x, y);

    angles[i] += 0.02;

    if (x >= width) {
      //background(255);
      //angles[i] = 0;
      save("waves.jpg");
      noLoop();
    }
  }
  
}

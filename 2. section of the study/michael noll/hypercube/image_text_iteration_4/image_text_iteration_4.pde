// Processing code for two rotating 4D hypercubes (tesseracts)

int numVertices = 16;
float[][] vertices = new float[numVertices][4];
float angle = 0;

void setup() {
  size(1000, 800, P3D); // Increased canvas size
  colorMode(RGB, 255);
  initializeHypercube();
}

void draw() {
  background(0);
  translate(width / 2, height / 2);
  stroke(255);
  noFill();

  // Draw the first hypercube to the left
  pushMatrix();
  translate(-300, 0); // Increased distance between cubes
  rotateY(angle); // Rotation around a vertical line (Y-axis)
  drawHypercube();
  popMatrix();

  // Draw the second hypercube to the right
  pushMatrix();
  translate(300, 0); // Increased distance between cubes
  rotateY(angle); // Rotation around a vertical line (Y-axis)
  drawHypercube();
  popMatrix();

  angle += 0.01; // Increment rotation angle for counterclockwise rotation
}

void initializeHypercube() {
  // Initialize vertices of a 4D hypercube
  for (int i = 0; i < numVertices; i++) {
    int x = (i & 1) == 0 ? -1 : 1;
    int y = (i & 2) == 0 ? -1 : 1;
    int z = (i & 4) == 0 ? -1 : 1;
    int w = (i & 8) == 0 ? -1 : 1;
    vertices[i] = new float[] {x, y, z, w};
  }
}

void drawHypercube() {
  for (int i = 0; i < numVertices; i++) {
    for (int j = 0; j < numVertices; j++) {
      if (Integer.bitCount(i ^ j) == 1) {
        float[] v1 = project(vertices[i]);
        float[] v2 = project(vertices[j]);
        line(v1[0], v1[1], v1[2], v2[0], v2[1], v2[2]);
      }
    }
  }
}

float[] project(float[] v) {
  // 4D to 3D projection
  float distance = 2; // Distance from the 4D object
  float[] projectedV = new float[3];

  float x = v[0];
  float y = v[1];
  float z = cos(angle) * v[2] - sin(angle) * v[3]; // Rotation in the ZW plane
  float w = sin(angle) * v[2] + cos(angle) * v[3]; // Rotation in the ZW plane

  // 4D to 3D projection
  projectedV[0] = x / (distance - w) * 100; // Scale for visibility
  projectedV[1] = y / (distance - w) * 100;
  projectedV[2] = z / (distance - w) * 100;

  return projectedV;
}

// Processing code for two independently rotating 4D hypercubes (tesseracts)

int numVertices = 16;
float[][] vertices = new float[numVertices][4];
float angle1 = 0; // Rotation angle for the first hypercube
float angle2 = 0; // Rotation angle for the second hypercube

void setup() {
  size(800, 600, P3D);
  colorMode(RGB, 255);
  initializeHypercube();
}

void draw() {
  background(0);
  translate(width / 2, height / 2);
  stroke(255);
  noFill();

  // Draw the first hypercube
  pushMatrix();
  translate(-200, 0); // Shift to the left
  drawHypercube(angle1);
  popMatrix();

  // Draw the second hypercube
  pushMatrix();
  translate(200, 0); // Shift to the right
  drawHypercube(angle2);
  popMatrix();

  angle1 += 0.01; // Increment rotation angle for the first hypercube
  angle2 += 0.01; // Increment rotation angle for the second hypercube
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

void drawHypercube(float angle) {
  for (int i = 0; i < numVertices; i++) {
    for (int j = 0; j < numVertices; j++) {
      if (Integer.bitCount(i ^ j) == 1) {
        float[] v1 = project(vertices[i], angle);
        float[] v2 = project(vertices[j], angle);
        line(v1[0], v1[1], v1[2], v2[0], v2[1], v2[2]);
      }
    }
  }
}

float[] project(float[] v, float angle) {
  // 4D to 3D projection
  float distance = 2; // Distance from the 4D object
  float[] projectedV = new float[3];

  // Rotation in the XY plane
  float x = cos(angle) * v[0] - sin(angle) * v[1];
  float y = sin(angle) * v[0] + cos(angle) * v[1];
  // Rotation in the ZW plane
  float z = cos(angle) * v[2] - sin(angle) * v[3];
  float w = sin(angle) * v[2] + cos(angle) * v[3];

  // 4D to 3D projection
  projectedV[0] = x / (distance - w) * 100; // Scale for visibility
  projectedV[1] = y / (distance - w) * 100;
  projectedV[2] = z / (distance - w) * 100;

  return projectedV;
}

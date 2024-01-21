
// Hypercube (4D cube) rotation and stereoscopic projection

int dim = 4;  // Number of dimensions
float[][] nodes;  // Nodes of the hypercube
int[][] edges;  // Edges of the hypercube
float theta = 0;  // Angle for rotation
PVector camPos;  // Camera position for left and right eye

void setup() {
  size(800, 800, P3D);
  background(0);
  nodes = new float[16][dim];  // 16 nodes for a hypercube
  edges = new int[32][2];  // 32 edges
  camPos = new PVector(0, 0, (height/2.0) / tan(PI*30.0 / 180.0));  // Camera position based on screen size and angle
  initializeHypercube();
}

void draw() {
  background(0);
  translate(width/2, height/2);
  rotateHypercube();
  projectAndDrawHypercube();
  theta += 0.01;
}

void initializeHypercube() {
  // Initialize the nodes of the hypercube
  for (int i = 0; i < 16; i++) {
    int j = i;
    for (int k = 0; k < 4; k++) {
      nodes[i][k] = (j % 2) * 2 - 1;
      j /= 2;
    }
  }
  // Initialize the edges of the hypercube
  for (int i = 0; i < 32; i++) {
    int j = i;
    edges[i][0] = j % 16;
    edges[i][1] = edges[i][0] ^ (1 << (j / 16));
  }
}

void rotateHypercube() {
  // Rotate the hypercube in 4D space
  for (int i = 0; i < 16; i++) {
    // XY plane rotation
    float x = cos(theta) * nodes[i][0] - sin(theta) * nodes[i][1];
    float y = sin(theta) * nodes[i][0] + cos(theta) * nodes[i][1];
    nodes[i][0] = x;
    nodes[i][1] = y;
    
    // ZW plane rotation (additional rotation for 4D effect)
    float z = cos(theta) * nodes[i][2] - sin(theta) * nodes[i][3];
    float w = sin(theta) * nodes[i][2] + cos(theta) * nodes[i][3];
    nodes[i][2] = z;
    nodes[i][3] = w;
  }
}

void projectAndDrawHypercube() {
  // Draw the left and right views for stereoscopic effect
  for (int j = 0; j < 2; j++) {
    pushMatrix();
    if (j == 0) {
      // Left eye view
      translate(-width/4, 0, 0);
    } else {
      // Right eye view
      translate(width/4, 0, 0);
    }
    
    for (int i = 0; i < edges.length; i++) {
      PVector p1 = project(nodes[edges[i][0]]);
      PVector p2 = project(nodes[edges[i][1]]);
      stroke(255);
      line(p1.x, p1.y, p2.x, p2.y);
    }
    popMatrix();
  }
}

PVector project(float[] node) {
  // Project a 4D point onto 3D space
  float w = 1 / (4 - node[3]);
  float x = node[0] * w;
  float y = node[1] * w;
  float z = node[2] * w;
  return new PVector(x * width/8, y * width/8, z * width/8);
}

PVector[] cubeVertices;
int[][] cubeEdges;

void setup() {
  size(600, 600, P3D);
  cubeVertices = new PVector[8];
  cubeEdges = new int[][]{
    {0, 1}, {1, 3}, {3, 2}, {2, 0},
    {4, 5}, {5, 7}, {7, 6}, {6, 4},
    {0, 4}, {1, 5}, {2, 6}, {3, 7}
  };

  // Define the vertices of the cube
  cubeVertices[0] = new PVector(-50, -50, -50);
  cubeVertices[1] = new PVector(50, -50, -50);
  cubeVertices[2] = new PVector(-50, 50, -50);
  cubeVertices[3] = new PVector(50, 50, -50);
  cubeVertices[4] = new PVector(-50, -50, 50);
  cubeVertices[5] = new PVector(50, -50, 50);
  cubeVertices[6] = new PVector(-50, 50, 50);
  cubeVertices[7] = new PVector(50, 50, 50);
  
  noLoop();
}

void draw() {
  background(255);
  translate(width/2, height/2);
  rotateX(random(TWO_PI));
  rotateY(random(TWO_PI));
  rotateZ(random(TWO_PI));
  stroke(0);

  // Draw a random subset of the cube's edges
  for (int i = 0; i < cubeEdges.length; i++) {
    if (random(1) < 0.5) { // 50% chance to draw each line
      PVector start = cubeVertices[cubeEdges[i][0]];
      PVector end = cubeVertices[cubeEdges[i][1]];
      line(start.x, start.y, start.z, end.x, end.y, end.z);
    }
  }
  
  save("iteration_1.jpg");
}

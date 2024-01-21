// Define a cube in terms of its edges
PVector[] cubeVertices = {
  new PVector(-1, -1, -1), new PVector( 1, -1, -1),
  new PVector( 1,  1, -1), new PVector(-1,  1, -1),
  new PVector(-1, -1,  1), new PVector( 1, -1,  1),
  new PVector( 1,  1,  1), new PVector(-1,  1,  1)
};

int[][] cubeEdges = {
  {0, 1}, {1, 2}, {2, 3}, {3, 0}, // bottom
  {4, 5}, {5, 6}, {6, 7}, {7, 4}, // top
  {0, 4}, {1, 5}, {2, 6}, {3, 7}  // sides
};

void setup() {
  size(500, 500, P3D); // Set the size of the canvas and use P3D renderer
  background(255); // Set background color to white
}

void draw() {
  background(255); // Clear the background each frame
  lights(); // Set default lighting
  translate(width/2, height/2); // Move to the center of the window
  
  // Apply a random rotation
  rotateX(random(TWO_PI));
  rotateY(random(TWO_PI));
  rotateZ(random(TWO_PI));
  
  // Draw a random subset of the cube's edges
  stroke(0); // Set line color to black
  strokeWeight(2); // Set line weight
  noFill(); // Ensure the cube isn't filled
  beginShape(LINES);
  for (int i = 0; i < cubeEdges.length; i++) {
    if (random(1) < 0.5) { // Randomly choose whether to draw each edge
      PVector startVertex = cubeVertices[cubeEdges[i][0]];
      PVector endVertex = cubeVertices[cubeEdges[i][1]];
      vertex(startVertex.x*50, startVertex.y*50, startVertex.z*50);
      vertex(endVertex.x*50, endVertex.y*50, endVertex.z*50);
    }
  }
  endShape();
  
  noLoop(); // Run the draw function only once
  save("iteration_15.jpg");
}

void mouseClicked() {
  loop(); // When the canvas is clicked, generate a new pattern
}

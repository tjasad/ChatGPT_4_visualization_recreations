// Define the grid size and cell dimensions
int gridSize = 6;
int cellWidth;
int cellHeight;

// Colors array
color[] colors = {
  color(172, 51, 35),
  color(194, 195, 186),
  color(119, 169, 165),
  color(171, 95, 142),
  color(71, 130, 40),
  color(53, 47, 94),
  color(194, 172, 0)
};

void setup() {
  size(600, 600); // Set the size of the window
  background(0); // Set background color to black
  noLoop(); // No need to loop since we're not animating
  cellWidth = width / gridSize;
  cellHeight = height / gridSize;
}

void draw() {
  for (int i = 0; i < gridSize; i++) {
    for (int j = 0; j < gridSize; j++) {
      // Choose a random color for each grid cell
      color cellColor = colors[int(random(colors.length))];
      fill(cellColor);
      stroke(cellColor);
      int quadsInCell = int(random(2, 5)); // Random number of quadrilaterals per cell

      // Draw the quadrilaterals
      for (int q = 0; q < quadsInCell; q++) {
        beginShape();
        for (int p = 0; p < 4; p++) {
          // Allow for slight overlap between cells
          float x = cellWidth * i + random(-10, cellWidth + 10);
          float y = cellHeight * j + random(-10, cellHeight + 10);
          vertex(x, y);
        }
        endShape(CLOSE);
      }
    }
  }
  
  save("iteration_1.jpg");
}

// Function to save the image
void keyPressed() {
  if (key == 's') {
    save("grid_art.png");
  }
}

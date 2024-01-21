void setup() {
  size(275, 275); // Assuming the canvas size is similar to the image size
  noLoop(); // No need to loop since we are drawing a static image
}

void draw() {
  background(255); // White background
  noStroke(); // No border for the rectangles
  
  // Draw rectangles with varying shades of gray across the canvas
  int numberOfBars = 20; // Assuming there are 20 bars based on the image pattern
  for (int i = 0; i < numberOfBars; i++) {
    float barWidth = width / float(numberOfBars); // Width of each bar
    float x = i * barWidth; // X position of each bar
    int grayScale = int(map(i, 0, numberOfBars-1, 0, 255)); // Mapping the bar index to grayscale value
    fill(grayScale); // Set the color for the rectangles
    rect(x, 0, barWidth, height); // Draw the rectangle
  }
  
  save("grayscale.jpg");
}

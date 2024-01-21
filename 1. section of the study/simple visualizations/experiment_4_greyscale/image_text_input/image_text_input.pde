size(275, 275); // Set the size of the canvas
int shades = 11; // Number of shades
float bandWidth = width / shades; // Width of each band

for (int i = 0; i < shades; i++) {
  float shade = map(i, 0, shades-1, 0, 255); // Map the shade from 0 to 255
  fill(shade); // Set the fill color
  rect(i * bandWidth, 0, bandWidth, height); // Draw the rectangle
  save("grayscale.jpg");
}

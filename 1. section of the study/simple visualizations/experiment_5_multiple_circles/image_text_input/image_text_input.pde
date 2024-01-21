void setup() {
  size(700, 450); // Set the size of the canvas
  background(0); // Set the background color to black
}

void draw() {
  // No loop to draw the circles only once
  noLoop();
  
  // Define colors using RGB values
  int blue = color(76, 153, 186);
  int orange = color(227, 151, 50);

  // Draw the first blue circle
  fill(blue);
  ellipse(width / 6, height / 2, 50, 50);

  // Draw the two orange circles below the first blue circle
  fill(orange);
  ellipse(width / 6, (height / 2) + 55, 50, 50);
  ellipse(width / 6, (height / 2) + 110, 50, 50);

  // Draw the second blue circle to the right of the lowest orange circle
  fill(blue);
  ellipse((2 * width) / 3, (height / 2) + 110, 50, 50);
  save("multipleCircles.jpg");
}

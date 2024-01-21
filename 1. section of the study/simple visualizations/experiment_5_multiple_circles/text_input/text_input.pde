void setup() {
  size(600, 200); // Set the size of the canvas
  background(0); // Set the background to black

  // Define the colors
  color blue = color(76, 153, 186);
  color orange = color(227, 151, 50);

  // First third of the canvas width
  float firstThird = width / 3;

  // Draw the first blue circle
  fill(blue);
  ellipse(firstThird / 2, height / 2, 50, 50); // Adjust size and position as needed

  // Draw the two orange circles
  fill(orange);
  ellipse(firstThird / 2, height / 4, 50, 50); // Adjust size and position as needed
  ellipse(firstThird / 2, 3 * height / 4, 50, 50); // Adjust size and position as needed

  // Draw the second blue circle
  fill(blue);
  ellipse(2 * firstThird, 3 * height / 4, 50, 50); // Adjust size and position as needed
  save("multipleCircles.jpg");
}

void draw() {
  // Additional drawing code can go here
}

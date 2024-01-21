void setup() {
  size(400, 400); // Set the size of the canvas
  noLoop(); // No need to loop since we're not animating
}

void draw() {
  background(255); // Set the background color to white
  
  // Draw the yellow rectangle
  fill(255, 224, 102); // Set the fill color to pastel yellow
  noStroke(); // No border
  rect(100, 100, 200, 200); // Draw the rectangle
  
  // Draw the blue triangle
  fill(102, 178, 255); // Set the fill color to pastel blue
  triangle(50, 300, 150, 100, 250, 300); // Draw the triangle
  
  // Draw the pink triangle
  fill(255, 153, 204); // Set the fill color to pastel pink
  triangle(150, 300, 250, 100, 350, 300); // Draw the triangle
  
  // Draw the orange circle
  fill(255, 178, 102); // Set the fill color to pastel orange
  ellipse(200, 200, 100, 100); // Draw the circle
  save("figurePlacement.jpg");
}

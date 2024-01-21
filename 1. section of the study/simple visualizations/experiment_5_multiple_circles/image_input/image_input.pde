size(700, 450);  // Set the size of the canvas
background(0);  // Set the background color to black

noStroke();  // No border for the circles

// Define the colors
color blue = color(0, 121, 184);
color orange = color(255, 88, 0);

// Draw the circles
fill(blue);  // Set the fill color to blue
ellipse(175, 112.5, 150, 150);  // Draw the first blue circle
ellipse(175, 337.5, 150, 150);  // Draw the second blue circle

fill(orange);  // Set the fill color to orange
ellipse(525, 112.5, 150, 150);  // Draw the first orange circle
ellipse(175, 225, 150, 150);  // Draw the second orange circle

save("multipleCircles.jpg");

size(400, 400); // Set the size of the canvas
noStroke(); // Ensure no borders on shapes

// Set background color
background(244, 231, 131);

// Draw half circle on the left side
fill(253, 166, 73);
arc(0, height/2, 200, 200, HALF_PI, 3*HALF_PI);

// Draw first triangle along the upper border
fill(77, 180, 228);
triangle(100, 0, 300, 0, 200, 200);

// Draw second triangle in the lower right corner, only one edge visible
fill(184, 60, 112);
triangle(width, height, width/2, height, width, height/2);

save("figurePlacement.jpg");

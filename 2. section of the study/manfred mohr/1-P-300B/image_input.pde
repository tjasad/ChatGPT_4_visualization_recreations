void setup() {
    // Define the four quadrants as arrays of vertices
    float[][] quad1 = {{0, 0}, {410, 0}, {410, 373}, {0, 373}};
    float[][] quad2 = {{410, 0}, {820, 0}, {820, 186}, {410, 186}};
    float[][] quad3 = {{410, 373}, {820, 373}, {820, 746}, {410, 746}};
    float[][] quad4 = {{0, 373}, {410, 373}, {410, 746}, {0, 746}};

    // Draw the quadrants
    drawQuadrant(quad1);
    drawQuadrant(quad2);
    drawQuadrant(quad3);
    drawQuadrant(quad4);
    
    size(820, 746);  // Set the size of the canvas
    noLoop();  // Ensure that draw loop does not repeat
}

void drawQuadrant(float[][] vertices) {
    fill(0); // Set the color to black
    beginShape();
    for (int i = 0; i < vertices.length; i++) {
        vertex(vertices[i][0], vertices[i][1]);
    }
    endShape(CLOSE);
}

void draw() {
    // No drawing code needed since we draw everything in setup
    save("iteration_1.jpg");
}

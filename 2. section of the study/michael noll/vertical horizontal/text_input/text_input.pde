int numLines = 100;
int xRange = 400; // -200 to 200
int yRange = 1000; // -500 to 500

void setup() {
    size(800, 800);
    background(255);

    float x = random(-200, 200);
    float y = random(-500, 500);
    stroke(0);
    strokeWeight(2);

    for (int i = 0; i < numLines; i++) {
        float newX, newY;

        // Alternating the coordinate that changes
        if (i % 2 == 0) {
            newX = random(-200, 200);
            newY = y;
        } else {
            newX = x;
            newY = random(-500, 500);
        }

        line(map(x, -200, 200, 0, width), map(y, -500, 500, 0, height), 
             map(newX, -200, 200, 0, width), map(newY, -500, 500, 0, height));
        
        // Update the current point
        x = newX;
        y = newY;
    }
    
    save("iteration_1.jpg");
}

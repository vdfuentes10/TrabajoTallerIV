  
void setup() {
  size(300, 500);
  draw();
}

// Although empty here, draw() is needed so
// the sketch can process user input events
// (mouse presses in this case).
void draw() {
  // Sets the screen to be 640 pixels wide and 360 pixels high


// Set the background to black and turn off the fill color
background(0);
noFill();
background(0, 153, 255);
stroke(50,50,50);
rect(width*0, height*0, width * 0.99, height *0.99);
line(width*0, height*0.30, width * 0.50, height *0);
line(width*0.80, height*0, width * 0.99, height *0.40);
line(width*0, height*0.70, width * 0.50, height *0.50);
line(width * 0.50, height *0.50, width*0, height*0.30);
line(width * 0.50, height *0.50, width * 0.99, height *0.40);
line(width * 0.50, height *0.50, width * 0.99, height *0.80);
line(width * 0.50, height *0.50, width * 0.70, height *0.99);

ellipse(width * 0.50, height *0.70, 200, 200);
ellipse(width * 0.50, height *0.50, 150, 150);
ellipse(width * 0.50, height *0.60, 50, 50);
ellipse(width * 0.50, height *0.60, 80, 80);
rect(width*0.43, height*0.10, width * 0.15, height *0.30);
rect(width*0.405, height*0.03, width * 0.20, height *0.10);
rect(width*0.43, height*0.15, width * 0.15, height *0.02);
rect(width*0.43, height*0.20, width * 0.15, height *0.02);
rect(width*0.43, height*0.25, width * 0.15, height *0.02);
rect(width*0.43, height*0.30, width * 0.15, height *0.02);


}

void mousePressed() {
 
}

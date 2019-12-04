PShape thing;

void setup() {
  size(640, 360);
  // The file "shape1.svg" must be in the data folder
  // of the current sketch to load successfully
  thing = loadShape("02.svg");
} 

void draw(){
  background(102);
    // Draw at coordinate (110, 90) at size 100 x 100
  //shape(thing, 0, 0, 200, 200);   // Draw at coordinate (280, 40) at the default size}
  drawShape();
}

void drawShape() {
  thing.disableStyle();
  fill(255,0,0);
  stroke(0,255,0);
  shape(thing, 0, 0);
}

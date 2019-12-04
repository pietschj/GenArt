//Step 1: create a PImage object
PImage img;

void setup() {
  size(800,600);
  //Step 2: load the image into the Pimage object
  img = loadImage("apartments.jpg");
}

void draw() {

  
  //tint(153, 0, 204);
  //image(img, 400,0, 400, 600); 
}

void mousePressed() {
  //Step 3: draw the image
  tint(0, 153, 204);
  image(img, mouseX,mouseY, 100, 100);
}
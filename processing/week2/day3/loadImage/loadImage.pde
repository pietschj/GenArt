//datatype for image PImage
PImage img;
PImage img2;

void setup() {
  size(800,600);
  //load image from data folder
  img = loadImage("apartments.jpg");
  img2 = loadImage("swirl.jpg");
}

void draw() {
  image(img, 0,0, 800, 600); 
  image(img2,0,0,200,400);
}
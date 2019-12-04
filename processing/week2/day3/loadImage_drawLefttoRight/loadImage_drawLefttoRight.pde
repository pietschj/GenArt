//Step 1: create a PImage object
PImage img;
PImage crop;
int counter;

void setup() {
  size(800,600);
  //Step 2: load the image into the Pimage object
  img = loadImage("apartments.jpg");
  frameRate(15);
}

void draw() {
  //Step 3: draw the image
  
  int cropX = int(map(mouseX, 0, width, 0, 3793-2));
   crop = img.get(cropX, 0, 2, 2529);
  
  //draws the entire image to the screen.
  
  //image(img, 0,0, width, height);
  
  
  float tintR = map(mouseX, 0, width, 0, 255);
  float tintG = map(counter, 0, width, 0, 255);
  float tintB = map(mouseY, 0, height, 0, 255);
  
  tint(tintR, tintB, tintG);
  
  image(crop, counter, 0, 5, height); 
  
  if (counter < width) {
      counter = counter + 5;
  }     else {
      counter = 0;
  }
}

void mousePressed() {
   background(255);
}
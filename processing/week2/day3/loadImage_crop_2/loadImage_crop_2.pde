//Step 1: create a PImage object
PImage img;
PImage crop;

void setup() {
  size(800,600);
  //Step 2: load the image into the Pimage object
  img = loadImage("apartments.jpg");
}

void draw() {
  //Step 3: draw the image
  
  int cropX = int(map(mouseX, 0, width, 0, 3793));
  int cropY = int(map(mouseY, 0, height, 0, 2529));
  crop = img.get(cropX, cropY, 200, 200);
  //draws the entire image to the screen.
  tint(0, 153, 204);
  image(img, 0,0, width, height);
  
  noTint();
  image(crop, width/2-50,height/2-50, 100, 100); 
}

void mousePressed() {
     
}
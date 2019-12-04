//Step 1: create a PImage object
PImage img;
PImage crop;

void setup() {
  size(800,600);
  //Step 2: load the image into the Pimage object
  img = loadImage("apartments.jpg");
  frameRate(15);
}

void draw() {
  //Step 3: draw the image
  
  int cropX = int(map(random(1), 0, 1, 0, 3793-10));
  int cropY = int(map(random(1), 0, 1, 0, 2529-10));
  crop = img.get(cropX, cropY, 10, 10);
  //draws the entire image to the screen.
  //tint(0, 153, 204);
  //image(img, 0,0, width, height);
  
  noTint();
  //randomX = //create multiple of 100 up to 700;
  //randomY = //create multiple of 100 up to 500;
  int randomX = int(map(random(1), 0, 1, 0, width-10));
  int randomY = int(map(random(1), 0, 1, 0, height-10));
  println(randomX, randomY);
  image(crop, randomX, randomY, 10, 10); 
}

void mousePressed() {
     
}
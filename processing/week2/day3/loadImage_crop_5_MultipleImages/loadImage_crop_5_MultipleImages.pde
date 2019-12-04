//Step 1: create a PImage object
PImage img; //appartment img
PImage img2; //sea image
PImage crop;

int randomFactor = 10;

void setup() {
  size(800,600);
  //Step 2: load the image into the Pimage object
  img = loadImage("apartments.jpg");
  img2 = loadImage("sea.jpg");
  frameRate(15);
}

void draw() {
  
}

void mousePressed() {
     //if (key == ' ' ) { 
       mosaic();
     //}
}

void mosaic() {
   for (int i= 0; i< 25; i = i+ 1) {
       randomTile();
   }
}


//picks up a random section of the loaded image
//and places it on the canvas
void randomTile() {
  println("Hi I am the mosaic");
  //Step 3: draw the image
  
  int cropX = int(map(random(1), 0, 1, 0, 3793-40));
  int cropY = int(map(random(1), 0, 1, 0, 2529-40));
  
  int whichImage = round(random(100));
  
  println("whichImage: " , whichImage);
  if (whichImage < randomFactor) {
    //appartment crop
    crop = img.get(cropX, cropY, 40, 40);
  } else  {
    //sea crop
    crop = img2.get(cropX, cropY, 40, 40);  
  }
  //draws the entire image to the screen.
  //tint(0, 153, 204);
  //image(img, 0,0, width, height);
  
  noTint();
  int tileSize = 50;
  int randomX = floor(random(0,16))*tileSize; //create multiple of 100 up to 700;
  int randomY = floor(random(0,12))*tileSize; //create multiple of 100 up to 500;
  //int randomX = int(map(random(1), 0, 1, 0, width-100));
  //int randomY = int(map(random(1), 0, 1, 0, height-100));
  //println(randomX, randomY);
  image(crop, randomX, randomY, tileSize, tileSize); 
  
}

void keyPressed() {
  if (key == '1' && randomFactor < 100) {
     randomFactor = randomFactor + 10; 
  }
  
  if (key == '2' && randomFactor > 0) {
     randomFactor = randomFactor - 10; 
  }
  println(randomFactor);
} 
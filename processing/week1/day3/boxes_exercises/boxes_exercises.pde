//variables go here
int i;

int size = 55;
int gap = 20;
int offset= 15;
int max;
boolean yellowBoxes = false;

//this runs once
void setup() {
  size(400,400);
  max = int(width/(size+gap));
  
  //this will draw rects horizontally  
  fill(255,0,0);
  for (i=0; i< max; i = i+ 1) {
    rect(offset + (size+gap)* i, offset, size, size);
  }
 
  fill(0,0,255);
  //this will draw rects vertically  
  for (i=0; i< max; i = i+ 1) {
    rect(offset, offset + ((size+gap) * i),  size, size);
    
  }
  
  //this will draw rectangles in random positions vertically  
  fill(0,255,0);
  for (i=0; i< max; i = i+ 1) {
    size = int(random(5, size));
    float xPos = random(width-size);
    float yPos = random(height-size);
    rect(xPos, yPos,  size, size);
    
  }
  frameRate(3);
}

//this runs all the time
void draw() {
  if (yellowBoxes == true) {
    //put your code in here
     //this will draw rectangles in random positions vertically  
    fill(255,255,0);
    for (i=0; i< max; i = i+ 1) {
      size = int(random(5, 80));
      float xPos = random(width-size);
      float yPos = random(height-size);
      rect(xPos, yPos,  size, size);
      
    }
  }
}

void mousePressed() {
   println("mouse is pressed down");
   fill(0,255,255);
    for (i=0; i< max; i = i+ 1) {
      size = int(random(5, 80));
      float xPos = random(width-size);
      float yPos = random(height-size);
      rect(xPos, yPos,  size, size);
      
   }
}
//variables go here
int myVar = 5;


//this runs once
void setup() {
  
  size(400,400);
  
  rectMode(CENTER);
  strokeWeight(2);
 /* rect(width/2-0,   height/2-0, 105,105); 
  rect(width/2-3, height/2-3, 90,90);
  rect(width/2-6, height/2-6, 75,75);
  rect(width/2-9, height/2-9, 60,60);
  rect(width/2-12, height/2-12, 45,45);
  rect(width/2-15, height/2-15, 30,30);
   */
   int reduceSize = 0;
   int sqSize = 0;
   int offset = 0;
   
   int spacing = 4;
   int initialSize = 225;
   int downSize = 20;
   int loopMax = 7;
      
  for (int i=0; i < loopMax; i = i+ 1) {
    reduceSize = (downSize * i);
    sqSize = initialSize - reduceSize;
    offset = spacing * i;
    rect(width/2 - offset,   height/2 - offset, sqSize, sqSize); 
  }
  
}

//this runs all the time
void draw() {
  //put your code in here
}
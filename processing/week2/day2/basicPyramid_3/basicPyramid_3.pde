//variables go here
  int reduceSize = 0;
  int sqSize = 0;
  int offset = 0;
  int size = 0;
  int howMany =4; 
   //change these variables to affect your pyramid.
   
  int spacing = 3;
  int initialSize = 70;
  int downSize = 8;
  int loopMax = 6;
  int border; 
 

//this runs once
void setup() {
  
  size(600,600);
  
  rectMode(CENTER);
  strokeWeight(2);
 
   
   background(102);
   howMany = floor(width/initialSize);
   border = (width - (howMany * initialSize))/2;
    //this draws the grid   
    for (int i=0;i<howMany;i++) {
       for (int j=0;j<howMany;j++) {
          pushMatrix();
          translate(j*initialSize+ border, i*initialSize + border); 
          fill(random(100,255));
          //this here draws the Pyramid
           
           for (int k=0; k < loopMax; k = k+ 1) {
              reduceSize = (downSize * k);
              sqSize = initialSize - reduceSize;
              offset = spacing * k;
              //Modulo in if then changes between shapes
              if ((i+j+1)%2 == 0) {
                ellipse(0 + initialSize/2 - offset,  0 + initialSize/2 - offset, sqSize, sqSize); 
              } else {
                rect(0 + initialSize/2 - offset,  0 + initialSize/2 - offset, sqSize, sqSize); 
              }
              
            }
           
          popMatrix();
      } 
    } 
      
      
      
      
  
  
}

//this runs all the time
void draw() {
  //put your code in here
}
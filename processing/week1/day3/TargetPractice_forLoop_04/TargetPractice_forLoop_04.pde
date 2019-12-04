//a counter
int i=0;
float size=0;
int max;
int step = 12;
int initialSize = 100;
int hsbCol; //that stores the hue component of hsb colour
int hsbSat; //that stores the hue component of hsb colour

void setup()
{
  size(400, 400);
  background(127);
  noStroke();
  smooth();
  //the max of the loop is calculated automatically
  max = int(initialSize/step);
  
  //setting the colourMode to HSB
  colorMode(HSB, 360,100,100);
  
  
  // a beautiful for loop - you' ll love them
  println("==my Loop");
  /*
  for loop has 3 parts
  1. setup the counter
  2. condition of the loop
  3. change the counter
  these are in the round brackets*/
  rectMode(CENTER);
  
  
  

}

/* our own function - command
   this function draws a number of rectangles
   that increase in size based on a loop
*/
void drawTheThingAlready() {
  
    for (i = 0; i < max; i=i+1) {
     println(i, ". i * 4: ", initialSize - (i * step)); 
     fill(0 + (i * step), 255, 127,55);
     //We are calculating the size based on the counter i
     //multiplied with step. This changes each time
     //the loop runs.
     
     //calculating size of shape
     size = initialSize - (i * step);
     //ellipse(width/2, height/2, size,size);
     
     rect(mouseX, mouseY, size, size);
  }

}





/* our own function - now with more bells and whistles
   this function draws a number of rectangles
   that increase in size based on a loop
   It uses the following arguments
   int iSize = Size of the graphic
   int iStep = Distance between graphic shapes
   char iShape = a char  that represents a shape
                 'c' for circle
                 'r' for rect
*/                 
void drawTheThingAlreadyWithKnobs(int iSize, int iStep, char iShape) {
   int loopMax = int(iSize/iStep); 
   println("loopMax is: ", loopMax);
  
    for (i = 0; i < loopMax; i=i+1) {
     println(i, ". i * 4: ", iSize - (i * step)); 
     
     
     //remapping the mouseY pos to a value between 0 -360  
     hsbCol = int(map(mouseY,0, height, 0, 360));
     hsbSat = int(map(mouseX,0, width, 0, 100));
     fill(hsbCol, hsbSat, 100);
     
     //We are calculating the size based on the counter i
     //multiplied with step. This changes each time
     //the loop runs.
     
     //calculating size of shape
     size = iSize - (i * iStep);
     
     println("Shape is: " ,iShape);
     
     if (iShape == 'c') {
       ellipse(mouseX, mouseY, size,size);
     }
     if (iShape == 'r') {
       rect(mouseX, mouseY, size, size);
     } 
     if (iShape == 'l') {
       strokeWeight(1);
       stroke(hsbCol, hsbSat, 100);
       //stroke(255);
       line(width/2 , height/2 + (2* i), 0, 0);
       line(width/2 , height/2+ (2* i), width, height);
     }
  }

}



//inbuilt funciton
void draw()
{
}

void mouseDragged()
{
  // code that happens when the mouse moves
  // with the button down
  println("mouseDragged");
  drawTheThingAlreadyWithKnobs(75, 10, 'c');
}

void mousePressed()
{
  // code that happens when the mouse button
  // is pressed
  println("mousePressed");
  
  drawTheThingAlreadyWithKnobs(50, 2, 'r');

}

void mouseReleased()
{
// code that happens when the mouse button
// is released
   println("mouseReleased");
   drawTheThingAlreadyWithKnobs(100, 20, 'l');
}
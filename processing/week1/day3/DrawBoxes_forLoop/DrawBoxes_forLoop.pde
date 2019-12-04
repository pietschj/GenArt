//a counter
int i=0;
PFont myFont;


void setup()
{
  size(400, 400);
  background(127);
  noStroke();
  smooth();
  // The font must be located in the sketch's 
  // "data" directory to load successfully
  myFont = loadFont("Dialog-20.vlw");
  textFont(myFont, 10);
  
  // a beautiful for loop - you' ll love them
  println("==my Loop");
  /*
  for loop has 3 parts
  1. setup the counter
  2. condition of the loop
  3. change the counter
  these are in the round brackets*/
  
  for (i = 0; i < 5; i=i+1) {
     println(i, ". Draw a box at positionX: ", 50 + (i*30)); 
     fill(55);
     text("row of boxes: we are only changing the X position", 50, 40);
     fill(random(255),random(255), random(255));
     //row of boxes: we are only c hanging the X position
     rect(50 + (i*(50 + 10)), 50, 50, 50);
     //row of boxes: we are changing the X and the size
     fill(55);
     
     text("row of boxes: we are changing the X and the size", 50, 140);
     fill(random(255),random(255), random(255));
     rect(50 + (i*(50 + 10)), 150, 50 + (i * 5), 50 + (i * 5));
      //row of boxes: we are changing the X and the Y
     fill(55);
     text("row of boxes: we are changing the X and Y position", 50, 240);
     fill(random(255),random(255), random(255));
     rect(50 + (i*(50 + 10)), 250 + (i*5) , 50 , 50 );
  }
  

}

void draw()
{


  
  
  //1st circle
  //fill(20);
  //ellipse(width/2, height/2, 360,360);
  
    
}

void mouseDragged()
{
  // code that happens when the mouse moves
  // with the button down
  println("mouseDragged");
}

void mousePressed()
{
  // code that happens when the mouse button
  // is pressed
  println("mousePressed");
}

void mouseReleased()
{
// code that happens when the mouse button
// is released
   println("mouseReleased");
}
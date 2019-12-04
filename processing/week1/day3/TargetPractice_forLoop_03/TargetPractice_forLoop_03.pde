//a counter
int i=0;
float size=0;
int max;
int step = 2;
int initialSize = 400;

void setup()
{
  size(400, 400);
  background(127);
  noStroke();
  smooth();
  
  //the max of the loop is calculated automatically
  max = int(initialSize/step);
  
  // a beautiful for loop - you' ll love them
  println("==my Loop");
  /*
  for loop has 3 parts
  1. setup the counter
  2. condition of the loop
  3. change the counter
  these are in the round brackets*/
  
  for (i = 0; i < max; i=i+1) {
     //println(i, ". i * 4: ", initialSize - (i * step)); 
     //println(
     fill(random(255), 255-i, 127);
     //We are calculating the size based on the counter i
     //multiplied with step. This changes each time
     //the loop runs.
     size = initialSize - (i * step);
     ellipse(width/2, height/2, size,size);
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
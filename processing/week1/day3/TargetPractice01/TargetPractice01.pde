//runs once
void setup()
{
  size(400, 400);
  background(255);
  
    //1st circle
  fill(20);
  ellipse(width/2, height/2, 360,360);
  //2nd circle
  fill(40);
  ellipse(width/2, height/2, 340,340);
  //3rd circle
  fill(60);
  ellipse(width/2, height/2, 320,320);
  //4th circle
  fill(80);
  ellipse(width/2, height/2, 300,300);
  //5th circle
  fill(100);
  ellipse(width/2, height/2, 280,280);
  //6th circle
  fill(120);
  ellipse(width/2, height/2, 260,260);
}

void draw()
{

  
  
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
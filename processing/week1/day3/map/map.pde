//variables go here
float myWidth = 25;
float myHeight = 25;
float myRed;
float myBlue;
float myGreen;
float myStroke;



//this runs once
void setup() {
  size(400,400);
  background(255);
  //put your code in here  
}

//this runs all the time
void draw() {
  //background(255);
  //put your code in here
  println(mouseX, mouseY);
  rectMode(CENTER);
  // map function takes an input betwen a minimum and a maximum
  // and converts it to an output minimum and maximum.
  myWidth = map(mouseX,0,width, 10, 400);
  myHeight = map(mouseY, 0, height, 10, 400);
  myRed = map(mouseX,0,width, 0, 255);
  myBlue = map(mouseY, 0, height, 0, 255);
  myGreen = 255 - myRed; 
  myStroke = map(mouseX,0,width, 0, 10);
  
  //styling based on X and Y mouse position
  stroke(255-myRed, 255-myGreen, 255- myBlue);
  strokeWeight(myStroke);
  
  fill(myRed, myGreen, myBlue);
  
  rect(width/2, height/2, myWidth, myHeight);
  
  
}
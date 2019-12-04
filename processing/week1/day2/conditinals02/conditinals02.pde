//variables go here
int myRed = 0;
int myGreen = 0;
int myBlue = 255;

//this runs once
void setup() {
  //put your code in here  
  size(400,400);
  frameRate(30);
}

//this runs all the time
void draw() {
  //put your code in here
  myRed = myRed + 1;
  myBlue = myBlue - 1;
  myGreen = myGreen + 3;
  
  println("myRed: ", myRed, "myGreen: ", myGreen, "myBlue: ", myBlue);
  //check value of myRed: if greater than 255, reset to 0.
  if (myRed == 255) {
     myRed = 0; 
  }
  
  if (myBlue == 0) {
     myBlue = 255; 
  }
  
  if (myGreen > 255) {
    myGreen = 0;
  }
  
  background(myRed, myGreen, myBlue);
  noStroke();
  fill(255-myRed, 255-myGreen, 255-myBlue);
  rect(50,50,300,300);
  fill(myRed, myGreen, myBlue);
  rect(100,100,200,200);
  fill(255-myRed/2, 255-myGreen/3, 255-myBlue);
  ellipse(width/2,height/2,175,175);
  
}
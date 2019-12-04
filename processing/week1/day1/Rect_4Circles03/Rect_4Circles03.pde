
//STep 1: create a variable of type int 
int circleSize = 35;
int increase = 1;
//max and min circleSize values
int upperLimit = 55;
int lowerLimit = 5;
int rCol = 0; //redColour Channel;
int bCol = 0; 
int gCol = 0;
//this sets the sketch up
void setup() {
  size(400,400);
  
  
  background(255);
  //random picks a randomValue between 0 and Val, i.e. 255
  //int converts this to an int. Otherwise it would be a float.
  rCol = (int(random(255)));
  bCol = 255-rCol;
  gCol = int(rCol/2);
  
  noStroke();
}

//this runs the whole time in a loop
void draw() {
  
  //println("I am in the draw loop");
  fill(127); 
  //my Rect
  rect(0,0,100,100);
  //draw they Eyes
  
  //colour values depend on circleSize and are mapped using
  //map function
  //rCol = int(map(circleSize, lowerLimit, upperLimit, 0, 255 ));

  
  fill(rCol, bCol, gCol);
  
  //Step 2. Apply variable in your ellipse
  //1st Row
  ellipse(30,30,circleSize,circleSize);
  ellipse(70,30,upperLimit- circleSize,upperLimit-circleSize);
  //2nd Row
  ellipse(30,70,upperLimit -circleSize, upperLimit -circleSize);
  ellipse(70,70, circleSize,  circleSize);
  
  //I am adding to the variable circleSize
  
  //Step 3. Increase or Decrease the variable
  //circleSize = circleSize + 1;
  
  //we want our circle to expand and contract
  //here is how
  //we need an upper 55 and a lowerlimit =5 of circleSize
  //we test circleSize is not Greater than upperlimit
  //if it is greater we decrease circleSize
  
  //conditional (testcondition) {
  //    if true execute this code block
  //}    else {
  //     otherwise do this stuff
  //} 
  
  if (circleSize > upperLimit) {
      increase = -1;
      println("circle is shrinking");
  }   
  
  if (circleSize < lowerLimit) {
     increase = +1;  
     println("circle is growing");
  }
    
 circleSize = circleSize + increase;
 //println(rCol);


}
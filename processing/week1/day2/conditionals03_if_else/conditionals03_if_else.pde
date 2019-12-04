//Example of If...Else

//variables go here


//this runs once
void setup() {
  size(200,200);
  noStroke();
  //put your code in here  
}

//this runs all the time
void draw() {
  //put your code in here
  println("mouseX: ", mouseX);
  
  //checking that mouse is over right side
  if (mouseX > width/2) {
     //if true - do it. 
     fill(127,200,56);
     rect(width/2, 0, width/2,height);
     fill(180,5,180);
     rect(0,0,width/2,height);
  } else  {
    //if false - do it.
     fill(180,5,180);
     rect(width/2, 0, width/2,height);
     fill(127,200,56);
     rect(0,0,width/2,height);
  }
  
  
}
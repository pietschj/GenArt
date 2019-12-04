//creating a variable of type integer
float size = 5.0;
float speed = 1.3;

//this sets the sketch up
void setup() {
  println("setup");
  size(200,200);
  background(255);
  noStroke();
  frameRate(25);
}

//this runs the whole time in a loop
void draw() {
  background(255);
  println("running", size);
  //size = size + 1 * speed;
  speed = speed + 0.25;
  fill(127); 
  //my Rect
  rect(0,0,100,100);
  //draw they Eyes
  fill(85);
  
  //1st Row
  ellipse(30,30+speed,size,size);
  ellipse(70,30-speed,size,size);
  //2nd Row
  ellipse(30,70+speed,size,size);
  ellipse(70,70-speed,size,size);
}
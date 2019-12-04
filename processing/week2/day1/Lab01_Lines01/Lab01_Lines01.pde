//variables go here
boolean randomStroke = true;

float topX;
float bottomX;
int counter;

//colour choices are from color.adobe.com
color c1 = #4FEAFF;
color c2 = #3EE8A1;
color c3 = #51FF58;
color c4 = #A8E83E;

//this runs once
void setup() {
  counter = 0;
  //put your code in here 
  size(400,400);
  
}

//this runs all the time
void draw() {
  //put your code in here
  topX = random(width);
  bottomX = random(width);
  
  strokeWeight(random(1, 20));
    //multiple if then statements
    //change stroke colour based on
    //the remainder  (% operator)
    if (randomStroke == true) {
        stroke(random(255), random(100, 200), random(55, 100), 55);
    } else {
        if (counter%4 == 0 ) {
          stroke(c1,55);
        }  
        if (counter%4 == 1) {
          stroke(c2,55);
        }
        if (counter%4 == 2) {
          stroke(c3,55);
        } 
        if (counter%4 == 3) {
          stroke(c4,55);
        } 
    }
    
    line(topX, 0, bottomX, height);
  
  println("counter: ", counter, counter%5);

  
  counter = counter + 1;
  //counter++;
}
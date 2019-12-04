//Task: turn this into a chesset
int howMany = 8;
int sqSize;
boolean blackFill = true;


void setup() {
  size(400, 400);
  sqSize = int(width/howMany);
        //outer loop for xPos
        for (int i=0;i<howMany;i=i+1) {
          if (howMany%2==0) {
            blackFill = !blackFill;
          }
          println("outer loop i: ", i);
         //inner loop is for yPos
         for (int j=0;j<howMany;j=j+1) {
           println("=== inner loop. j is: ", j);
           int xpos =  i * sqSize;
           int ypos =  j * sqSize;
           println("=== xpos is: ", xpos, " ypos is:", ypos);
           //noStroke();
           if (blackFill == true){
             fill(random(127,255), 55);
           } else {
             fill(255);
           }
           rect(xpos ,ypos,sqSize,sqSize);
           blackFill = !blackFill;
         }
      } 

} 

void draw(){
  //background(102);
    // Draw at coordinate (110, 90) at size 100 x 100
  //shape(thing, 0, 0, 200, 200);   // Draw at coordinate (280, 40) at the default size}


  }
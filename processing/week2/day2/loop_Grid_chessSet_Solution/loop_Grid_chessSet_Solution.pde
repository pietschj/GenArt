//Task: turn this into a chesset
boolean blackFill = false;

void setup() {
  size(400, 400);
  
        for (int i=0;i<8;i++) {
          println("outer loop i: ", i);
          
         for (int j=0;j<8;j++) {
            println("=== inner loop. j is: ", j);
             int xpos =  i * 50;
             int ypos =  j * 50;
             if (blackFill == true) { 
               fill(0);
             } else {
               fill(255);
             }
             rect(xpos ,ypos,50,50);
             //set blackFill to be the opposite
             blackFill = !blackFill;
         }
         blackFill = !blackFill;
      } 

} 

void draw(){
  //background(102);
    // Draw at coordinate (110, 90) at size 100 x 100
  //shape(thing, 0, 0, 200, 200);   // Draw at coordinate (280, 40) at the default size}


  }
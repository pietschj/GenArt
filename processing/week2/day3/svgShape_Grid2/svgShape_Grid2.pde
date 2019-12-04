//this is the template to create screenshots.
//press 's' to create a .png file in the same folder
//'press 'p' to create a .pdf file in the same folder
//ensure that you only add code in the draw() method between the lines. 
//add your code  here
//end your code here

import processing.pdf.*;
import java.util.Calendar;

PShape thing;
Boolean savePDF = false;

void setup() {
  size(640, 360);
  // The file "shape1.svg" must be in the data folder
  // of the current sketch to load successfully
  thing = loadShape("03.svg");
} 

void draw(){
  
  if (savePDF) beginRecord(PDF, timestamp()+"joachim_pietsch.pdf");
 

   //add your code  here
     background(102);
    // Draw at coordinate (110, 90) at size 100 x 100
       for (int i=0;i<4;i++) {
         for (int j=0;j<8;j++) {
           pushMatrix();
           translate(j*100, i*100);
           rotate(map(mouseX, 0, width, 0, 2*PI)); 
           scale(map(mouseY, 0, height, 0.2, 2)); 
           drawShape(#ccffdd, #459234);
           popMatrix();
        }
       } 
    
    
   //end your code here


    // end of pdf recording
  if (savePDF) {
    savePDF = false;
    endRecord();
  }
 
  
}

void drawShape(color f1, color str1) {
  thing.disableStyle();
  fill(f1);
  stroke(str1);
  shape(thing, 0, 0);
}


void mouseDragged()
{
// code that happens when the mouse moves
// with the button down
}

void mousePressed()
{
// code that happens when the mouse button
// is pressed
}

void mouseReleased()
{
// code that happens when the mouse button
// is released
}

//don't change this

void keyPressed() {
  //key s or p for saving and printing
  if (key=='s' || key=='S') saveFrame(timestamp()+"joachim_pietsch_##.png");
  if (key=='p' || key=='P') savePDF = true;
  if (key=='1') savePDF = true;
  
}

//creates a timeStamp String
String timestamp() {
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}

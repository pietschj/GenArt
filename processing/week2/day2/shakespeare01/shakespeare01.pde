//variables go here
StringList inventory;
int howMany = 3;
int SqSize;
PFont font;
// The font must be located in the sketch's 
// "data" directory to load successfully
  //put your code in here 



//this runs once
void setup() {

  font = loadFont("ACaslonPro-Regular15.vlw");
  
 println("HELLO");
 inventory = new StringList();
 inventory.append("Shall");
 inventory.append("summer's day?");
 inventory.append("more lovely");
 inventory.append("more temperate");
 inventory.append("Love sought");
 inventory.append("is good,");
 inventory.append("unsought is better.");
 inventory.append("Hear my soul speak:");
 inventory.append("My heart fly");
 inventory.append("to your service.");
  
 println(inventory);
 println(inventory.size());
 println(inventory.get(1));
 
 size(400, 400);
 SqSize = int(width/howMany);
 //setUp the font
 textFont(font, 15);

 for (int i=0;i<howMany;i++) {
   println("outer loop i: ", i);
      for (int j=0;j<howMany;j++) {
           println("=== inner loop. j is: ", j);
           int xpos =  i * SqSize;
           int ypos =  j * SqSize;
           //rect(xpos ,ypos,SqSize,SqSize);
           shakespeareBox(xpos,ypos, SqSize);
       }
 } 
}

//this runs all the time
void draw() {
  //put your code in here
}

//this runs all the time
void shakespeareBox(int x, int y, int SqBox) {
  fill(random(127, 255));
  rect(x,y,SqBox,SqBox);
  fill(1);
  text("word", x + 20, y + 20);

}
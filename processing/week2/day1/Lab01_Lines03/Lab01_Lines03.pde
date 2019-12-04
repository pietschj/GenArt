//variables go here
boolean randomStroke = true;

float X;
float Y;
int counter;
//this will be an Index that the user can change
//it ranges from 0-3;
int myStroke=0;
//this will be an Index that the user can change
//it ranges from 0-11;
int myOpacity=0;

//colour choices are from color.adobe.com

color c1 = #4FEAFF;
color c2 = #3EE8A1;
color c3 = #51FF58;
color c4 = #A8E83E;


//colours are stored inside Array myColors
color[] myColors = {#4FEAFF, #3EE8A1, #51FF58, #A8E83E, #FF0000};
//myColors[1] -> #3EE8A1

//not currently used
color[] myOtherColors = {c1, c2, c3, c4, c1};

int[] myOpacities = {11,33,66,99,101, 111,122, 133, 155,188,211,233};



//this runs once
void setup() {
  counter = 0;
  //put your code in here 
  size(400,400);
  
}

//this runs all the time
void draw() {
  //put your code in here
  X = random(width);
  Y = random(width);
  
  strokeWeight(random(1, 20));
    //multiple if then statements
    //change stroke colour based on
    //the remainder  (% operator)
    if (randomStroke == true) {
        stroke(random(255), random(100, 200), random(55, 100), 55);
    } else {
      stroke(myColors[myStroke], myOpacities[myOpacity]);  
      //stroke(myColors[counter%5],255);
    }
    
    
    line(width/2, height/2, X, Y);
  
    println(myOpacity, myStroke);


  
  counter = counter + 1;
  //counter++;
}

void keyPressed() {
      if (key == 'r' || key == 'R') {
       randomStroke = !randomStroke; 
       background(255);
      }
      
       if (keyCode == UP && myStroke < 4) {
            myStroke = myStroke + 1;
       } else if (keyCode == DOWN && myStroke > 0) {
            myStroke = myStroke - 1;
       } 
  
      
      if (keyCode == RIGHT && myOpacity < 11) {
          myOpacity = myOpacity +1;
      } else if (keyCode == LEFT && myOpacity > 0) {
          myOpacity  = myOpacity - 1;
      } 
      
      //erase background when space is pressed
      if (key == ' ') {
         background(255);
      }
 
      
      
}
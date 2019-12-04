//variables go here
int i; //myCounter



//this runs once
void setup() {
  //counts up in steps of 1 to 100
  println("------------ Counting up --------");
  for (i=0; i <= 100; i = i+ 1) {
     println("Do it!", i);
  }
   println("------------ Counting down --------");
  //count down until it reaches
  for (i=100; i >= 0; i = i - 1) {
     println("Do it!", i); 
  }
  
  //put your code in here  
}

//this runs all the time
void draw() {
  //put your code in here
}
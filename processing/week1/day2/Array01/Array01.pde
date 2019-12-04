//example of declaring an array or list
int [] myValues = new int[3];
int myOtherArray[] = {321, 654, 987};



int myCounter = 0;

//this runs once
void setup() {
  //setting values for the array
  myValues[0] = 123;
  myValues[1] = 456;
  myValues[2] = 789;
}

//this runs all the time
void draw() {
  //put your code in here
  println(myCounter, myCounter%3, myValues[myCounter%3], myValues[floor(random(3))], myOtherArray[myCounter%3]);
  myCounter = myCounter + 1;
}
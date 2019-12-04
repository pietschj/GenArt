int howMany = 10;
int size;
void setup() {
  size(400, 400);
  // The file "shape1.svg" must be in the data folder
  // of the current sketch to load successfully
  background(102);
  size = int(width/howMany);
      
  for (int i=0;i<howMany;i++) {
     for (int j=0;j<howMany;j++) {
        pushMatrix();
        translate(j*size, i*size); 
           fill(random(255));
           rect(0,0,size,size);
        popMatrix();
      } 
  } 
}
void draw(){


}
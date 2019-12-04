
void setup() {
  size(400, 400);
  // The file "shape1.svg" must be in the data folder
  // of the current sketch to load successfully
  background(102);
} 

void draw(){
  
      for (int i=0;i<4;i++) {
         for (int j=0;j<4;j++) {
           pushMatrix();
           translate(j*100, i*100); 
           rect(0,0,100,100);
           popMatrix();
      } 
  }
}



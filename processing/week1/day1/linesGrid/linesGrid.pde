background(255);
size(500,400);
//fill will colour all subsequent shapes
fill(242,240,201);
rect(0,0,width/3, height/2);
fill(96,166,63);
noStroke();
rect(width/3,0,width/3, height/2);
fill(217,149,80);
rect(2* width/3,0,width/3, height/2);
fill(135,82,4);
rect(0,height/2,width/3, height/2);
fill(96,166,63);
rect(2*width/3,height/2, width/3, height/4);
fill(135,82,4);
rect(2*width/3,3*height/4, width/3, height/4);

strokeWeight(8);
stroke(200);
//these are lines with flexible values
line(width/3,0,width/3,height);
line(2* width/3,0,2 * width/3,height);
line(0,height/2,width,height/2);
line(width/2, height/2, width/2, height);
line(width/3, 3 * height/4, width, 3* height/4);



// line(200,0,200,400);
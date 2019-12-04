size(400,400);
//head
ellipse(200,200,200,200);
//eyes
ellipse(150,180,40,40);
ellipse(250,180,40,40);
//pupils
fill(0);
ellipse(150,190,15,15);
ellipse(250,190,15,15);
fill(255);
//nose
triangle(200,180, 220, 220, 180, 220);

//mouth
//arc draws an arc
//arguments (x, y, w, h, startAngle, endAngle, mode)
arc(200, 240, 150, 50, radians(0), PI, CHORD); 
/// <reference path="./node_modules/@types/p5/p5.global-mode.d.ts" />


var myVariable = 5; //declare your variables here.

//this runs once
function setup() {
  createCanvas(400, 400);
	noFill();
	rectMode(CENTER);
	strokeWeight(3);
	frameRate(2);
}

//this runs many times a second or as specified by freameRate(). See line 10.
function draw() {

  background(220);
	for (var i=0; i< 15; i++) {
		fill(random(255),random(255),random(255));
		stroke(random(255), random(255),random(255));
		rect(200,200,300 - (i*15), 300- (i*15));
		fill(127,3,127);
		
	}
	ellipse(100,150,200,250);
	arc(30,40,)
}

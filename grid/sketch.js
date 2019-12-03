/// <reference path="./node_modules/@types/p5/p5.global-mode.d.ts" />

function setup() {
  createCanvas(windowWidth, windowHeight);
	noFill();
	
	strokeWeight(3);
	frameRate(1);
}

function draw() {

  background(220);
	let x =0;
	let y =0;
	
	h = random (15,50);
    while (x < width) {
		
			w = random(5,50);
			
			g = random(0,55)*5
			rect(x, y,w, h );
			fill(g);
			x = x+ w;
			if (x > width) {
				
				x = 0;
				y = y + h;
				if (y > height) {
					return;
				}
			}	
	}	
	 
	// for (var i=0; i< 15; i++) {
		
	// 	w = random(5,50);
	
	// 	g = random(0,55)*5
	// 	rect(x, y,w, h );
	// 	fill(g);
	// 	x = x+ w;
		
	
	// }
}

function mousePressed() {
	
	  let fs = fullscreen();
	  fullscreen(!fs);
	  resizeCanvas(windowWidth, windowHeight);
	}
  
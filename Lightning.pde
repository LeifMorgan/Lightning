
int startX = (int)(Math.random()*250);
int startY = 0;
int endX = (int)(Math.random()*250);
int endY = 0;


void setup()
{
  size(300,300);
  strokeWeight(1);
  background(0);	

}
void draw()
{
	int color1 = (int)(Math.random()*50+50);
	int color2 = (int)(Math.random()*50+50);
	fill(0,0,0,15);
	rect(0,0,300,300);

		//lightning
	while (endX < 300) 
	{
		
		strokeWeight(2);
		fill(color1,color2, 0);
		stroke(color1,color2,0);
		endY = startY + (int)(Math.random()*10);
		endX = startX + (int)(Math.random()*21-9);
		line(startX,startY,endX,endY);
		startX = endX;
		startY = endY;
	}

//clouds
	stroke(0);
	noStroke();
	fill(130);
	ellipse(150,0, 300,100);
	ellipse(0,0, 300,150);
	ellipse(300,0, 300,100);

	//house
	fill(170,126,50);
	rect(120,240,70,70);
	fill(220,75,40);
	triangle(100,240,155,200,210,240);
	rect(175,200,5,30);

	//windows
	fill(0);
	rect(130,255,15,15);
	rect(165,255,15,15);
	fill(102,51,0);
	rect(145, 280, 20,30);


}
void mouseMoved()
{
	
	startX = (int)(Math.random()*300);
	startY = 0;
	endX = (int)(Math.random()*300);
	endY = 0;


	
}
void mousePressed()
{
	fill(255,255,255,60);
	rect(0,0,300,300);
}

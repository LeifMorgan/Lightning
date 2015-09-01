int startX = (int)(Math.random()*300);
int startY = 0;
int endX = (int)(Math.random()*300);
int endY = 0;

void setup()
{
  size(300,300);
  strokeWeight(1);
  background(0,0,102);	

}
void draw()
{
	
	while (endX < 300) 
	{
		stroke(204,204,0);
		endY = startY + (int)(Math.random()*10);
		endX = startX + (int)(Math.random()*21-9);
		line(startX,startY,endX,endY);
		startX = endX;
		startY = endY;
	}
}
void mousePressed()
{
	startX = (int)(Math.random()*300);
	startY = 0;
	endX = (int)(Math.random()*300);
	endY = 0;
}


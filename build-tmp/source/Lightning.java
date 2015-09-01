import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Lightning extends PApplet {

int startX = (int)(Math.random()*300);
int startY = 0;
int endX = (int)(Math.random()*300);
int endY = 0;

public void setup()
{
  size(300,300);
  strokeWeight(1);
  background(0,0,102);	

}
public void draw()
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
public void mousePressed()
{
	startX = (int)(Math.random()*300);
	startY = 0;
	endX = (int)(Math.random()*300);
	endY = 0;
}

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Lightning" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

public void setup()
{
	size(800,800);
	background(255);
}
public void draw()
{
	noFill();
	stroke(0,0,0);
	originalFractal(400,400,20,(int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
}
public void originalFractal(int x, int y, int len, int col1, int col2, int col3)
{
	if(len>=200)
	{
		ellipse(x,y,len,len);
	}
	else
	{
		stroke(col1,col2,col3);
		originalFractal(x,y-len,len+80,(int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		stroke(col1,col2,col3);
		originalFractal(x-len,y,len+80, (int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		stroke(col1,col2,col3);
		originalFractal(x+len,y,len+80, (int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
		stroke(col1,col2,col3);
		originalFractal(x,y+len,len+80,(int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	}
}
public void setup()
{
	size(800,800);
	background(255);
}
public void draw()
{
	noFill();
	stroke(0,255,0);
	originalFractal(400,400,20);
}
public void originalFractal(int x, int y, int len)
{
	if(len==200)
	{
		ellipse(x,y,len,len);
	}
	else
	{
		originalFractal(x-len,y-len,len+20);
		originalFractal(x-len,y+len,len+20);
		originalFractal(x+len,y-len,len+20);
		originalFractal(x+len,y+len,len+20);
	}
}
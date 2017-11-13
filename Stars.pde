class Stars 
{
	int starsX,starsY, starsColor;
  public Stars()
  {
  	starsX = (int)(Math.random()*800);
  	starsY = (int)(Math.random()*800);
  	starsColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));

  }
  public void show()
  {
  	stroke(0);
  	fill(starsColor);
  	ellipse(starsX,starsY,10,10);
  }
 
}

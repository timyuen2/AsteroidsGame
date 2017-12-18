class Asteroid extends Floater
{
  private int rSpeed;
  public Asteroid()
  {
    
    corners = 8;
 
    int [] xS = {16,8,-8,-16,-16,-8,8,16};
    int [] yS = {8,16,16,8,-8,-16,-16,-8};
    xCorners = xS;
    yCorners = yS;
    myColor = color(128,128,128);
    myCenterX = Math.random() * 800;
    myCenterY = Math.random()*800;
    myDirectionX = (int)(Math.random()*5-2);
    myDirectionY = (int)(Math.random()*5-2);
    myPointDirection = 0;
    rSpeed = (int)(Math.random()*5-2);

  }

  public void move()
  {
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     
    myPointDirection+=rSpeed;   
    if(rSpeed == 0)
    {
      rSpeed = (int)(Math.random()*5-2);
    }
    if(myDirectionX == 0)
    {
      myDirectionX = (int)(Math.random()*5-2);
    }

    if(myDirectionY == 0)
    {
      myDirectionY = (int)(Math.random()*5-2);
    }

    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    }   
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }      
  }
  public void setX(int x){myCenterX = x;}
  public int getX(){return (int)myCenterX;} 
  public void setY(int y){myCenterY= y;}
  public int getY(){return (int)myCenterY;}
  public void setDirectionX(double x){myDirectionX = x;}
  public double getDirectionX(){return myDirectionX;}
  public void setDirectionY(double y){myDirectionY = y;}
  public double getDirectionY(){return myDirectionY;}
  public void setPointDirection(int degrees){myPointDirection = degrees;}  
  public double getPointDirection(){return myPointDirection;}
}
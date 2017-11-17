class Spaceship extends Floater  
{   
    
    public Spaceship(){
        corners = 4;
        int [] xpos = {-8, 16, -8, -2};
        int [] ypos = {-8, 0, 8, 0};
        xCorners = xpos;
        yCorners = ypos;
        myColor = 255;
    	myCenterX = 400;
    	myCenterY = 400;
    	myDirectionX = 0;
    	myDirectionY = 0;
    	myPointDirection = 90;  
    }
    
    public void setX(int x){myCenterX = x;}
    public int getX() {return (int)myCenterX;}
    public void setY(int y){myCenterY = y;}
    public int getY(){return (int)myCenterY;}
    public void setDirectionX(double x){myDirectionX = x;}
    public double getDirectionX(){return myDirectionX;}
    public void setDirectionY(double y){myDirectionY = y;}
    public double getDirectionY(){return myDirectionY;}
    public void setPointDirection(int degrees){myPointDirection = degrees;}
    public double getPointDirection(){return myPointDirection;}

}

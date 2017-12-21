Spaceship bob;
boolean bShow = false;
ArrayList <Bullet> bullets;
boolean lShow = false;
Stars [] stars = new Stars[300];
ArrayList <Asteroid> asteroids;
boolean bWeapon = true;
public void setup() 
{
	size(800,800);
	bob = new Spaceship(); 
	bullets = new ArrayList <Bullet>();
	for(int i = 0; i< stars.length; i++)
		stars[i] = new Stars();
	asteroids = new ArrayList <Asteroid>();
	  for(int i = 0; i<15 ; i++)
  {
    asteroids.add(i, new Asteroid());
  }
}
public void draw() 
{
 background(0);
 for(int i = 0; i < stars.length;i++)
 	stars[i].show();
 bob.show();
 bob.move();
   for(int i = 0; i<asteroids.size();i++)
  {
    asteroids.get(i).show();
    asteroids.get(i).move();
     if(dist((float)bob.getX(), (float)bob.getY(), (float)asteroids.get(i).getX(), (float)asteroids.get(i).getY())<23)
    {
      asteroids.remove(i);
    }
	}
 for(int i = 0; i<asteroids.size();i++)
    {
      for(int j=0; j<bullets.size();j++)
      {

        if(dist((float)asteroids.get(i).getX(), (float)asteroids.get(i).getY(), (float)bullets.get(j).getX(),(float)bullets.get(j).getY())<35)
        {
        asteroids.remove(i);
        bullets.remove(j);
        asteroids.add(new Asteroid());
        
      }
      }
    }
 for(int i=0; i<bullets.size();i++)
    {
      bullets.get(i).show();
      bullets.get(i).move();
    } 
}
public void keyPressed()
{
	if(key == 'a')
		bob.turn(-12);
	if (key == 'd')
		bob.turn(12);
	if(key == 'w')
		bob.accelerate(.4);
	if(key == 'f')
	{
		bob.setX((int)(Math.random()*800));
		bob.setY((int)(Math.random()*800));
	}
	if(key == ' ')
    {
      if(bWeapon == true)
      {
        bullets.add(new Bullet(bob));
        bShow = true;        
      }
 	}	
 	  if(bShow == true)
  {
    
  }

}
public void keyReleased()
{
	if(key == 'w')
		bob.accelerate(0);
		bob.setDirectionX(0);
		bob.setDirectionY(0);
}
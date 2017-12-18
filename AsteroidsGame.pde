Spaceship bob;
Stars [] stars = new Stars[300];
ArrayList <Asteroid> asteroids;
public void setup() 
{
	size(800,800);
	bob = new Spaceship(); 
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
	
}
public void keyReleased()
{
	if(key == 'w')
		bob.accelerate(0);
		bob.setDirectionX(0);
		bob.setDirectionY(0);
}
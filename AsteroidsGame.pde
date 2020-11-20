Spaceship sally = new Spaceship();
Star[] sky = new Star[250];
public void setup() 
{
  size(500, 500);
  for(int i = 0; i < sky.length; i++)
  {
    sky[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  sally.show();
  sally.move();
  for (int i = 0; i < sky.length; i++)
  {
    sky[i].show();
  }
}
public void keyPressed()
{
  if (key == 'a')
  {
    sally.turn(-5);
  }
  else if (key == 'd')
  {
    sally.turn(5);
  }
  else if (key == 'w')
  {
    sally.accelerate(0.3);
  }
  if (key == 'h')
  {
    sally.hyperspace();
  }
}

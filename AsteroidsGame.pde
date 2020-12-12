Spaceship sally = new Spaceship();
ArrayList <Asteroid> maria = new ArrayList<Asteroid>();
Star[] sky = new Star[250];
public void setup() 
{
  size(500, 500);
  for(int i = 0; i < sky.length; i++)
  {
    sky[i] = new Star();
  }
  for(int i = 0; i < 10; i++)
  {
    maria.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < sky.length; i++)
  {
    sky[i].show();
  }
  for(int i = 0; i < maria.size(); i++)
  {
    maria.get(i).show();
    maria.get(i).move();
  }
  sally.show();
  sally.move();
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
    //when we go into hyperspace should we redo the star background?
  }
}

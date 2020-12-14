Spaceship sally = new Spaceship();
ArrayList <Asteroid> maria = new ArrayList<Asteroid>();
ArrayList <Bullet> leia = new ArrayList<Bullet>();
Star[] sky = new Star[250];
public void setup() 
{
  size(500, 500);
  for(int i = 0; i < sky.length; i++)
  {
    sky[i] = new Star();
  }
  for(int i = 0; i < 20; i++)
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
    float d = dist((float)sally.getX(), (float)sally.getY(), (float)maria.get(i).getX(), (float)maria.get(i).getY());
    if (d < 20)
    {
      maria.remove(i);
    }
  }
  for(int i = 0; i < leia.size(); i++)
  {
    leia.get(i).move();
    leia.get(i).show();
  }
  for(int i = 0; i < leia.size(); i++){
    for (int j = 0; j < maria.size(); j++){
      float d = dist((float)maria.get(j).getX(), (float)maria.get(j).getY(), (float)leia.get(i).getX(), (float)leia.get(i).getY());
      if (d < 20)
      {
        maria.remove(j);
        leia.remove(i);
        break;
      }
    }
  }
  sally.show();
  sally.move();
}

public void keyPressed()
{
  if (key == 'a')
  {
    sally.turn(-10);
  }
  else if (key == 'd')
  {
    sally.turn(10);
  }
  else if (key == 'w')
  {
    sally.accelerate(0.3);
  }
  if (key == 's')
  {
    sally.hyperspace();
    for(int i = 0; i < sky.length; i++)
    {
      sky[i].move();
    }
  }
  else if(key == ' ')
  {
    leia.add(new Bullet(sally));
  }
}

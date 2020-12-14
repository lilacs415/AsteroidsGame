class Bullet extends Floater{
  public Bullet(Spaceship sally){
    myCenterX = sally.getX();
    myCenterY = sally.getY();
    myXspeed = sally.getXspeed();
    myYspeed = sally.getYspeed();
    myPointDirection = sally.getPointDirection();
     if (Math.random() > 0.5)
    {
      myColor= color(0, 255, 0);
    }
    else
    {
      myColor = color(0, 0, 255);
    }
    accelerate(6);
  }
  public void show(){
    fill(myColor);
    stroke(myColor);
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  public double getX(){
      return myCenterX;
    }
  public double getY(){
      return myCenterY;
    }
  public void move(){
    myCenterX += myXspeed;    
    myCenterY += myYspeed; 
  }
}

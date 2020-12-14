class Bullet extends Floater{
  public Bullet(Spaceship sally){
    myCenterX = sally.getX();
    myCenterY = sally.getY();
    myXspeed = sally.getXspeed();
    myYspeed = sally.getYspeed();
    myPointDirection = sally.getPointDirection();
    accelerate(6);
  }
  public void show(){
    myColor = color(192);
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

class Star
{
  private int myX, myY, mySize, myColor;
  public Star()
  {
    myX = (int)(Math.random() * 500);
    myY = (int)(Math.random() * 500);
    mySize = (int)(Math.random() * 5 + 1);
    myColor = color((int)(Math.random()*100+155), (int)(Math.random()*100+155), (int)(Math.random()*100+155));
  }
  public void show()
  {
    fill(255);
    stroke(myColor);
    ellipse(myX, myY, mySize, mySize);
  }
}

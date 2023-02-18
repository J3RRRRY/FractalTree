private double fractionLength = .8;
private int smallestBranch = 20;
private double branchAngle = .65;  
public void setup()
{  
  size(640,480);    
  noLoop();
}
public void draw()
{  
  background(0);  
  stroke(0,255,0);  
  line(320,480,320,380);  
  drawBranches(320,380,135,3*Math.PI/2);  //will add later
}
public void drawBranches(int x,int y, double branchLength, double angle)
{  
  double a1 = angle + branchAngle;
  double a2 = angle - branchAngle;
  branchLength*= fractionLength;
  int endX1 = (int)(branchLength*Math.cos(a1) + x);
  int endY1 = (int)(branchLength*Math.sin(a1) + y);
  int endX2 = (int)(branchLength*Math.cos(a2) + x);
  int endY2 = (int)(branchLength*Math.sin(a2) + y);
  stroke((float)(Math.random() * 156 + 100), (float)(Math.random() * 156 + 100), (float)(Math.random() * 156 + 100));
  line(x, y, endX1, endY1);
  line(x, y, endX2, endY2);
  if(branchLength > smallestBranch) {
    drawBranches(endX1, endY1, branchLength, 3*Math.PI/2);
    drawBranches(endX2, endY2, branchLength, 3*Math.PI/2);
  }
} 

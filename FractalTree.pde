private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
private double a1 = Math.random() * (2 * Math.PI) + branchAngle;
private double a2 = Math.random() * (2 * Math.PI) - branchAngle;
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
  //drawBranches(??,??,??,??);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
  branchLength*= fractionLength;
  int endX1 = (int)(branchLength*Math.cos(a1) + x);
  int endY1 = (int)(branchLength*Math.sin(a1) + y);
  int endX2 = (int)(branchLength*Math.cos(a2) + x);
  int endY2 = (int)(branchLength*Math.sin(a2) + y);
} 

void setup()
{
  size(1000,1000);
	noLoop();
}
void draw(){
fill(50);
rect(0,0,1000,1000);
fill(#ffffff);
  int sum=0;
	for(int i=40;i<300;i+=60){
    for(int j=40;j<300;j+=60){
      Die bogusBob = new Die(i,j);
      bogusBob.roll();
      bogusBob.show();
      sum+=bogusBob.value;
  }
  
}
  text(Integer.toString(sum), 500,500);
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
  int myX;
  int myY;
  int value;	
  int length = 50;
	Die(int x, int y) //constructor
	{
		myX = x;
    myY = y;
	}
	void roll(){
		value = (int)(Math.random()*6) + 1;
    
	}
	void show(){
  rect(myX,myY,length,length);
  fill(50);
	if(value == 1){
      text("1",myX-1+length/2,myY+length/2);
	} else if(value == 2){
      text("22",myX-2+length/2,myY+length/2);
  } else if(value == 3){
      text("333",myX-3+length/2,myY+length/2);
  }else if(value == 4){
      text("4444",myX-4+length/2,myY+length/2);
  }else if(value == 5){
      text("55555",myX-5+length/2,myY+length/2);
  }else if(value == 6){
      text("666666",myX-6+length/2,myY+length/2);
  }
  fill(#ffffff);
}
}

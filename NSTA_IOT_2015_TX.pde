import processing.serial.*;

 String myString; 

int mouseXcord1=100;
int mouseXcord2=100;
int mouseXcord3=100;
int mouseXcord4=255;
int temperature;
int humidity;
int pressure;
int light;
String publicKey="q58gwmpVaOfm0jw1z7DX";
String privateKey="BVejmgn6G8fmWG9AkbKM";
void setup()
{
  size(1200, 1000);
}
void draw()
{
  background(mouseXcord1/4, mouseXcord2/4, mouseXcord3/4, (255-mouseXcord4/4));
  fill(255, 0, 0);
  rect(100, 80, mouseXcord1, 150);
  fill(0, 255, 0);
  rect(100, 310, mouseXcord2, 150);
  fill(0, 0, 540);
  rect(100, 520, mouseXcord3, 150);
  fill(125);
  rect(100, 750, mouseXcord4, 150);
  if (mouseX>100&&mouseX<1100&&mouseY>80&&mouseY<230&& mousePressed==true)
  {
    mouseXcord1=mouseX-100;
  }

  if (mouseX>100&&mouseX<1100&&mouseY>310&&mouseY<460&& mousePressed==true)
  {
    mouseXcord2=mouseX-100;
  }

  if (mouseX>100&&mouseX<1100&&mouseY>520&&mouseY<670&& mousePressed==true)
  {
    mouseXcord3=mouseX-100;
  }
  if (mouseX>100&&mouseX<1100&&mouseY>750&&mouseY<900&& mousePressed==true)
  {
    mouseXcord4=mouseX-100;
  }
  if (mouseXcord1>1020)
  {
    mouseXcord1=1020;
  }
  if (mouseXcord2>1020)
  {
    mouseXcord2=1020;
  }
  
  if (mouseXcord3>1020)
  {
    mouseXcord3=1020;
  }
  temperature=mouseXcord1/4;
  humidity=mouseXcord2/4;
  pressure=mouseXcord3/4;
  light=mouseXcord4/4;
//myString="http://data.sparkfun.com/input/3JQE8EEx9Wf005y0Qoza?private_key=oZ9kMkkl4pT449r4axqV&pot1="+pot1+"&pot2="+pot2+"&pot3="+pot3;
//myString="http://data.sparkfun.com/input/"+publicKey+"?private_key="+privateKey+"&pot1="+pot1+"&pot2="+pot2+"&pot3="+pot3;
myString="http://data.sparkfun.com/input/q58gwmpVaOfm0jw1z7DX?private_key=BVejmgn6G8fmWG9AkbKM&humidity="+humidity+"&light="+light+"&pressure="+pressure+"&temperature="+temperature;  

  if(keyPressed==true)
  {
  loadStrings(myString);
  delay(11000);
  }
  print(mouseXcord1/4+ "," + mouseXcord2/4 + "," + mouseXcord3/4+","+mouseXcord4/4);
  println("");
}


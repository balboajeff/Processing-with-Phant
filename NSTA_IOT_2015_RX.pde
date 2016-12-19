/**
 * HTTP Client. 
 * 
 * Starts a network client that connects to a server on port 80,
 *The sketch connects to a feed on data.sparkfun.com and builds a feed from there
 *
 http://data.sparkfun.com/output/q58gwmpVaOfm0jw1z7DX/latest  is the example string
*/
 

import processing.net.*;

String publicKey="q58gwmpVaOfm0jw1z7DX";
//String todaysDate="12-27-2014";//uncomment to enable the page filters for larger data sets.The date will determine the data returned
String[] data;
int[] subData;
int red;
int green;
int blue;
int alpha;
void setup() {
  size(875, 300);
  background(50);
  fill(200);
  
}

void draw() {
 String lines[]=loadStrings("http://data.sparkfun.com/output/"+publicKey+"/latest");
 //Uncomment the line below this to enable  the return of larger data sets
 //String lines[]= loadStrings("http://data.sparkfun.com/output/"+publicKey+"?gte%5Btimestamp%5D="+todaysDate+"");
 data=lines;
if(data.length >= 0) {
 subData =int (split(data[1],","));
 }
 /*
 //if you want to see what's being pulled fron data.sparkfun, uncomment this block
 //and comment out the "background" command below
 textSize(50);
 text(subData[0],0,200);
 text(",",90,200);
 text(subData[1],100,200);
 text(",",175,200);
 text(subData[2],200,200);
 */
  red=subData[3];
 green=subData[0];
 blue=subData[2];
 alpha=subData[1];
 
  println(data[1]);
    background(red, green ,blue, alpha);
    fill(255,0,0);//red value
    rect(50,15,subData[3]*3,35);
    
    fill(0,255,0);//greenvalue
    rect(50,65,subData[0]*3,35);
    
    fill(0,0,255);//blue value
    rect(50,115,subData[2]*3,35);
    
    fill(alpha);//alpha value
    rect(50,165,subData[1]*3,35);
    
    
  }



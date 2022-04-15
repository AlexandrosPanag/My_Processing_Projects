import processing.serial.*;


Serial myPort;

void setup(){
  myPort = new Serial(this , "COM4", 9600);
  myPort.bufferUntil('\n');
}

void draw(){}

void serialEvent (Serial myPort)
{
  String inString = myPort.readStringUntil('\n');
  
  print(inString);
  
}
  

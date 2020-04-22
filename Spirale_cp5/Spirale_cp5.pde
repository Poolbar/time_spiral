//time spiral_visualisation of my sleep
//fh potsdam_SoSe2019
//project by carina christler

import controlP5.*;

ControlP5 cp5;     //controlP5 class
Spirale s = new Spirale();

PFont myFont;
String csv [];
String myData [][];
int slider;

void setup() {
  smooth();
  textAlign(CENTER);
  size(800, 800);
  csv = loadStrings("schlaf1kopie.csv"); 
  myData = new String [csv.length][2];
  for (int i = 0; i < csv.length; i++) {
    myData[i] = csv[i].split(";");
  } 
  // create a slider
  cp5 = new ControlP5(this);
  cp5.addSlider("slider")
    .setPosition(200, 715).setWidth(420).setHeight(25)
    .setRange(0, 2520)
    .setValue(720)
    .setSliderMode(Slider.FLEXIBLE)
    ;
}

void draw() {
  background(230,240,250);  
  grid();  
  s.display(slider);
  myText();
}

void grid() {
  int lines = 24;
  for (int i=0; i<lines; i++) {
    float posx = 280 * sin(i*TWO_PI/lines) + width/2;
    float posy = 280 * cos(i*TWO_PI/lines) + height/2;
    strokeWeight(0.1);
    stroke(240);
    line(width/2, height/2, posx, posy);
    fill(190);
    text(myData[i][1], posx-10, posy);
  }
}

void myText() {
  fill(#1E3571);
  myFont = createFont("MontserratAlternates-MediumItalic", 30);
  textFont(myFont);
  
  text("Time Spiral _ A Visualisation of my Sleep", width/2, 60);
  textSize(15);
  text("Day1    Day2    Day3    Day4    Day5    Day6    Day7", 410, 770);
  for (int x = 205; x < 650; x += 58) {
    stroke(#DB09AE);
    strokeWeight(1);
    line(x, 750, x, 745);
  }
}

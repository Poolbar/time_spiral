class Spirale {
    
  void display(int tag) {
    for (int i = 0; i<tag; i++) {
      int col =  int(myData[i][2]);
      if (col == 0) {
        col = #FAE20A;
      } else if (col == 1) {
        col = #1E3571;
      }   

      float d = 15;
      float x = i*0.1 * sin(radians(i)); 
      float y = i*0.1 * -cos(radians(i));   

      noStroke();
      fill(col);        
      ellipse(width/2 +x, height/2 +y, d, d);
    }
  }
}

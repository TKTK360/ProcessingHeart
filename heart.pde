void setup(){
  size(400, 400);
  fill(0xFF, 0, 0);
}

void draw() {
  float x, y;
  int R = 10;

  //BG
  background(0xFFC0CB);

  //Heart
  strokeWeight(20);
  stroke(0xFF, 0, 0);
  strokeJoin(ROUND);

  pushMatrix();
  translate(width/2, height/2);

  beginShape();
  for (int theta = 0; theta < 360; theta++) {
    x = R * (16 * sin(radians(theta)) * sin(radians(theta)) * sin(radians(theta)));
    y = (-1) * R * (13 * cos(radians(theta)) - 5 * cos(radians(2 * theta)) 
      - 2 * cos(radians(3 * theta)) - cos(radians(4 * theta)));

    vertex(x, y);
  }
  endShape(CLOSE);
 
 popMatrix();
}

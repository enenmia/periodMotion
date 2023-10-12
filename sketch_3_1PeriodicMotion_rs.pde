float angle = 0;   // Current angle
float speed = 10;  // Speed of motion
float radius = 10; // Range of motion
float tx=100;
float ty=0;
float dx=1;
float dy=1;
void setup() {
  size(200, 200);
  background(173, 196, 206);
  noStroke();
}
void draw() {
  fill(173, 196, 206, 10);
  rect(0, 0, width, height);
  fill(#F1F0E8);
  float y = sin(radians(angle)) * radius;
  float x = cos(radians(angle)) * radius;
  translate(tx, ty);
  tx+=dx;
  ty+=dy;
  if (tx < 0 || tx > width) { dx = -dx; }
  if (ty < 0 || ty > height) { dy = -dy; }
  ellipse(x, y, 8, 8);
  angle += speed;
}

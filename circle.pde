https://processing.org/examples/bouncybubbles.html
//ball w/out collisions :(

float ball1X = 200;
float ball1Y = 0;
float ball2X = 100;
float ball2Y = 0;
float A = 50;
 
//create a variable for speed
float ySpeed = 2;
float ySpeed2 = 2;
float xSpeed = 2;
float xSpeed2 = 4;
 
void setup() {
  size(400,400);
  smooth();
  noStroke();
   
  // change the mode we draw circles so they are
  // aligned in the top left
  ellipseMode(CENTER);
 
}
 
void draw() {
  //clear the background and set the fill colour
  background(255);
  fill(0);
   
  //draw the circle in it's current position
  ellipse(ball1X, ball1Y, A,A);
  ellipse(ball2X, ball2Y, A,A);
  
  //add a little gravity to the speed
  ySpeed = ySpeed + 0.8;
  ySpeed2 = ySpeed2 + 0.8; 
  
  //frame speed
  ball1X = ball1X + xSpeed; ball1Y = ball1Y + ySpeed;
  ball2X = ball2X + xSpeed2; ball2Y = ball2Y + ySpeed2;
   
  //add speed to the ball's
  ball1Y = ball1Y + ySpeed;
  ball2Y = ball2Y + ySpeed2;
   
  //BALL 1 
  if (ball1Y > height - A) {
    // set the position to be on the floor
    ball1Y = height - A;
    // and make the y speed 90% of what it was,
    // but in the opposite direction
    ySpeed = ySpeed * -0.9;
     
    //switch the direction
    //ySpeed = ySpeed;
  }
  else if (ball1Y <= 0) {
    // if the ball hits the top,
    // make it bounce off
    ySpeed = -ySpeed;
  }
  //BALL 2
    if (ball2Y > height - A) {
    // set the position to be on the floor
    ball2Y = height - A;
    // and make the y speed 90% of what it was,
    // but in the opposite direction
    ySpeed2 = ySpeed2 * -0.9;
     
    //switch the direction
    //ySpeed2 = ySpeed2;
  }
  else if (ball2Y <= 0) {
    // if the ball hits the top,
    // make it bounce off
    ySpeed2 = -ySpeed2;
  }
 
   
}

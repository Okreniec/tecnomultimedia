//Okreniec, Ivan - Legajo:91341/0 - tp#3
//https://youtu.be/GFy6QyQs8Dc
int pantalla;
int velocidad;
int x;
int y;
int xEscalera;

int xBtn;
int yBtn;
int w;
int h;
boolean boton;

int fondo;

int tiempo;

PImage pj;
PImage pj_1;

PImage fondo_0;

PImage fondo_1;
PImage fondo_1_1;
PImage fondo_1_2;

PImage fondo_2;
PImage fondo_2_escalera;

String textos[] = new String[3];

void setup() {
  noStroke();
  pantalla=0;
  velocidad=2;
  fondo=0;
  tiempo=0;
  x=0;
  y=350;
  xEscalera=450;
  xBtn=450;
  yBtn=0;
  w=50;
  h=50;
  boton=false;
  textos[0]="ESTA MUY OSCURO";
  textos[1]="PULSA 'E' PARA ENCENDER LA LUZ";
  textos[2]="PULSA 'E'";
  pj = loadImage("pj.png");
  pj_1 = loadImage("pj_1.png");
  fondo_0 = loadImage("fondo_0.jpg");
  fondo_1 = loadImage("fondo_1.jpg");
  fondo_1_1 = loadImage("fondo_1_1.jpg");
  fondo_1_2 = loadImage("fondo_1_2.jpg");
  fondo_2 = loadImage("fondo_2.jpg");
  fondo_2_escalera = loadImage("fondo_2_escalera.png");
  size(500, 500);
  textSize(12);
}

void draw() {
  if ( pantalla==0  ) { //P A N T A L L A   D E   I N I C I O
    image(fondo_0, 0, 0);
    text("Click para empezar", mouseX, mouseY);
  } else if ( pantalla==1 ) {  //P A N T A L L A   S I L L O N
    if (fondo==0)image(fondo_1, 0, 0);
    if (fondo==0 && x<380 || x>400)text(textos[0], x, 300);
    if (fondo==0 && x>=380 && x<400)text(textos[1], 300, 300);
    if (fondo==0 && x>=380 && x<400 && key == 'e')fondo++;
    if (fondo==1)image(fondo_1_1, 0, 0);
    if (fondo==1 && x>=50 && x<100 && key == 'e')fondo++;
    if (fondo==1 && x>=50 && x<100)text(textos[2], 55, 300);
    if (fondo==2)image(fondo_1_2, 0, 0);
    if (x>=450 && fondo==2) {
      x=10;
      pantalla=2;
      fondo++;
    } 
    if (fondo==0)image(pj, x, 330);
    if (fondo==1 || fondo==2)image(pj_1, x, 330);
    tiempo++;
    text(tiempo, 400, 200);
    if (tiempo==850)pantalla=4; //T I E M P O
    if (mouseX>xBtn && mouseX<xBtn+w && mouseY>yBtn && mouseY<yBtn+h && mousePressed) {
      boton=true;
      volverAPantallaInicio();
    } else { 
      boton=false;
    }
  } else if ( pantalla==2 ) {  //P A N T A L L A   E S C A L E R A
    if (fondo==3) {
      image(fondo_2, 0, 0);
      image(fondo_2_escalera, xEscalera, 260);
    }
    if (x==450 && xEscalera>=240)text(textos[2], 400, 300);
    if (fondo==3 && xEscalera>=220 && xEscalera<240) {
      xEscalera=230;
    } else if (fondo==3 && x>=450 && key == 'e') {
      xEscalera=mouseX;
    }
    if (y==200)text(textos[2], x, 150);
    if (fondo==3 && y==200 && key == 'e')fondo++;
    if (fondo==4)pantalla=3;
    if (tiempo==850)pantalla=4; //T I E M P O
    image(pj_1, x, y-20);
    tiempo++;
    text(tiempo, 400, 200);
    if (mouseX>xBtn && mouseX<xBtn+w && mouseY>yBtn && mouseY<yBtn+h && mousePressed) {
      boton=true;
      volverAPantallaInicio();
    } else { 
      boton=false;
    }
  } else if ( pantalla==3 ) {  //P A N T A L L A   G A N O:
    if (fondo==4) {
      frameRate(1);
      for (int x_=0; x_<10; x_++) {
        for (int y_=0; y_<10; y_++) {
          fill(0, random(200, 255), 0);
          rect(y_*50, x_*50, 50, 50);
        }
      }
      textSize(70);
      text("G A N A S T E", 25, 300);
      textSize(40);
      text("clickea para reiniciar", 50, 400);
    }
  } else if ( pantalla==4 ) {  //P A N T A L L A   P E R D I O:
    frameRate(1);
    for (int x_=0; x_<10; x_++) {
      for (int y_=0; y_<10; y_++) {
        fill(random(200, 255), 0, 0);
        rect(y_*50, x_*50, 50, 50);
      }
    }
    textSize(70);
    text("P E R D I S T E", 20, 300);
    textSize(40);
    text("clickea para reiniciar", 50, 400);
  }
}

void mousePressed() {
  if ( pantalla==0  ) {  //pantalla de inicio mousePressed:
    pantalla=1;
    image(fondo_1, 0, 0);
  } else if ( pantalla==3 ) {  //pantalla perdio mousePressed:
    frameRate(60);
    volverAPantallaInicio();
  } else if ( pantalla==4 ) {  //pantalla perdio mousePressed:
    frameRate(60);
    volverAPantallaInicio();
  }
}

void volverAPantallaInicio() {
  pantalla=0;
  fondo=0;
  x=0;
  y=350;
  xEscalera=450;
  textSize(12);
  fill(255);
  tiempo=0;
}

void keyPressed() {
  if (key == 'a' && y==350 && x>0) {
    x = x-10;
  } else if (key == 'd' && y==350 && x<450) {
    x = x+10;
  } else if (fondo==3 && xEscalera==230 && x>=220 && x<240 && y>200 &&  key == 'w') {
    y = y-10;
  } else if (fondo==3 && xEscalera==230 && x>=220 && x<240 && y<350 && key == 's') {
    y = y+10;
  }
}

void keyReleased() {
  if (key == 'a' && x>0) {
  } else if (key == 'd' && x<450) {
  } else if (key == 'w' && y>100) {
  } else if (key == 's' && y<350) {
  }
}

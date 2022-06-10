//Okreniec Raley Ivan - comision 3 - 9/6/2022 - Legajo:91341/0
//video: https://youtu.be/DfDS1PO9-zo

int cuenta;
int menos;
int restar;
int resta;
int resta1;
int fondo;
int colorDerecha;
int colorArriba;
int colorIzq;

boolean boton=false;
int x=290;
int y=365;
int w=100;
int h=25;

void setup(){
  colorArriba=220;
  colorDerecha=100;
  colorIzq=75;
  fondo=0;
  menos=30;
  cuenta=0;
  resta=0;
  restar=25;
  resta1=0;
  size(400,400);
  noStroke();
  background(255);
}

void draw(){
  dibujarTrianguloConcubos();
  if(boton){
    colorArriba=220;
    colorDerecha=100;
    colorIzq=75;
  }
  fill(100);
  rect(x,y,w,h);
}

void mousePressed(){
  if(mousePressed){
    int a = int(random(0, 255));
    int d = int(random(0, 255));
    int i = int(random(0, 255));
    colorArriba=a;
    colorDerecha=d;
    colorIzq=i;
  }
  if((mouseX > x)&&(mouseX<x+w) && (mouseY > y) && (mouseY < y+h)){
    if(boton){
      boton=false;
    }else{boton=true;
   colorArriba=220;
  colorDerecha=100;
  colorIzq=75;
    }
  }
}

void dibujarTrianguloConcubos(){
  for(int xy=225; xy<350; xy+=25){
    fill(colorArriba);
      quad(xy+cuenta+25,xy-menos-resta, xy+20+cuenta+25,(xy+10)-menos-resta, xy+cuenta+25,(xy+20)-menos-resta, xy-20+cuenta+25,(xy+10)-menos-resta);//arriba 
    fill(colorDerecha);
      quad(xy+cuenta+20+25,(xy+10)-menos-resta, xy+20+cuenta+25,(xy+30)-menos-resta, xy+cuenta+25,(xy+40)-menos-resta, xy+cuenta+25,(xy+20)-menos-resta);//derecha
    fill(colorIzq);
      quad(xy+cuenta-20+25,(xy+10)-menos-resta, xy+cuenta+25,(xy+20)-menos-resta, xy+cuenta+25,(xy+40)-menos-resta, xy-20+cuenta+25,(xy+30)-menos-resta);//izquierda
    for(int a=0; a<1; a++){
      cuenta-=50;
      resta+=8;
    }
  }
  for(int y=230; y>=100; y-=35){
    fill(colorArriba);
        quad(150,y, 170,(y+10), 150,(y+20), 130,(y+10));//arriba  
    fill(colorDerecha);
        quad(170,(y+10), 170,(y+30), 150,(y+40), 150,(y+20));//derecha
    fill(colorIzq);
        quad(130,(y+10), 150,(y+20), 150,(y+40), 130,(y+30));//izquierda
  }
for(int xy=150; xy<275; xy+=25){
    fill(colorArriba);
       quad(xy,xy-restar+resta1, (xy+20),(xy+10)-restar+resta1, xy,(xy+20)-restar+resta1, xy-20,(xy+10)-restar+resta1);//arriba  
    fill(colorDerecha);
       quad((xy+20),(xy+10)-restar+resta1, (xy+20),(xy+30)-restar+resta1, xy,(xy+40)-restar+resta1, xy,(xy+20)-restar+resta1);//derecha
    fill(colorIzq);
       quad((xy-20),(xy+10)-restar+resta1, xy,(xy+20)-restar+resta1, xy,(xy+40)-restar+resta1, (xy-20),(xy+30)-restar+resta1);//izquierda
      resta1-=8;
    if(xy==250)resta1=0;
  }
    fill(colorArriba);
      quad(225,212, 245,222, 225,232, 205,222);//arriba 
    fill(colorDerecha);
      quad(245,222, 245,242, 225,252, 225,232);//derecha
fill(255);
rect(0,150,50,200);
}

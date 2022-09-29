/*       TP#4: "El juego"
 Okreniec, Ivan - Legajo:91341/0              video: https://youtu.be/c8UuYjd2qmw
 Gaitan, Agustin Lucas - Legajo 91347/8
 Merchena, Nicolás - Legajo:91568/0
 */

Circulo circulo;
Vida vida;
Puntos puntos;

int pantalla;

void setup() {
  size(400, 400);
  circulo=new Circulo(-50, 0, 50);
  vida=new Vida();
  puntos=new Puntos();
}

void draw() {
  nivel();
  circulo.display();
  circulo.teclas();
  circulo.movimiento();
  vida.mostrar();
  if (pantalla==0)puntos.mostrar();
}

void nivel() {
  background(255);
  line(100, 0, 100, 400);
  line(200, 0, 200, 400);
  line(300, 0, 300, 400);
}
void pantallaperder() {
  background(255, 0, 0);
  fill(255);
  textSize(25);
  text("¡perdiste!", 150, 180);
  text("puntos: ", 140, 210);
  text(puntos.puntos, 240, 210);
}

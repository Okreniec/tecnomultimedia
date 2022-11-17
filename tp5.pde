/*       TP#5: "El juego"
 Okreniec, Ivan - Legajo:91341/0
 Gaitan, Agustin Lucas - Legajo 91347/8
 Merchena, Nicolás - Legajo:91568/0
 Giovanni, Nieva - legajo:91312/5
 */
import ddf.minim.*;

Minim soundengine;
AudioSample sonido1;
AudioSample sonido2;
AudioSample sonido3;
AudioSample sonido4;

Pantallas pantallas;
Circulo circulo;
Vida vida;
Puntos puntos;
MP3 mp3;

int Pantalla;

void setup() {
  size(400, 600);
  circulo=new Circulo(-50, 0, 50);
  vida=new Vida();
  puntos=new Puntos();
  pantallas=new Pantallas();
  mp3=new MP3();
  soundengine = new Minim(this);
  sonido1 = soundengine.loadSample("1.wav", 1024);
  sonido2 = soundengine.loadSample("2.wav", 1024);
  sonido3 = soundengine.loadSample("3.wav", 1024);
  sonido4 = soundengine.loadSample("4.wav", 1024);
}

void draw() {
  if (Pantalla == 0) {
    pantallas.PantallaInicio();
  } else if (Pantalla == 1) {
    pantallas.PantallaJuego();
    circulo.display();
    circulo.teclas();
    circulo.movimiento();
    vida.mostrar();
    puntos.mostrar();
  } else if (Pantalla == 2 && key==' ') Reinicio();
}

void mousePressed() {
  if (Pantalla == 0) {
    Pantalla = 1;
  }
}

void keyPressed() {
  mp3.musica();
}

void Reinicio() {
  if (Pantalla == 2 && key == ' ') {
    Pantalla=0;
    vida.Vidas=3;
    puntos.Puntos=0;
    circulo.velocidad=0.25;
  }
}

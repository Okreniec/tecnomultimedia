class Pantallas {
  void PantallaInicio() {
    background(0);
    text("Click para empezar", width/2-50, height/2+20);
    text("Usá q,w,e,r", width/2-25, height/2);
    textSize(12);
  }

  void PantallaJuego() {
    background(255);
    line(100, 0, 100, 600);
    line(200, 0, 200, 600);
    line(300, 0, 300, 600);
  }
}

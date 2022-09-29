class Circulo {
  float x, y, diametro, generarNumero, velocidad;

  Circulo (float tempX, float tempY, int tempDiametro) {
    x=tempX;
    y=tempY;
    diametro=tempDiametro;
  }

  void movimiento() {
    if (y==-50)generarNumero = random(1, 4.9);
    if (generarNumero<2 && generarNumero>1) {
      x=50;
    } else if (generarNumero<3 && generarNumero>2) {
      x=150;
    } else if (generarNumero<4 && generarNumero>3) {
      x=250;
    } else if (generarNumero<5 && generarNumero>4) {
      x=350;
    }
  }

  void teclas() {
    if (pantalla==0)y += 5+velocidad;
    if (y>=width+5) {
      y=-50;
      vida.perderVida();
    }
    if (x==50 && y<width && pantalla==0 && key == 'q') {
      y=-50;
      velocidad +=  0.25;
      puntos.puntos += 1;
    }
    if (x==150 && y<width && pantalla==0 && key == 'w') {
      y=-50;
      velocidad +=  0.25;
      puntos.puntos += 1;
    }
    if (x==250 && y<width && pantalla==0 && key == 'e') {
      y=-50;
      velocidad +=  0.25;
      puntos.puntos += 1;
    }
    if (x==350 && y<width && pantalla==0 && key == 'r') {
      y=-50;
      velocidad += 0.25;
      puntos.puntos += 1;
    }
  }
  void display() {
    fill(0);
    ellipse(x, y, diametro, diametro);
  }
}

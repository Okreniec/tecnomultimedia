class Circulo {
  float x, y, diametro, generarNumero, velocidad=0.25;

  Circulo (float tempX, float tempY, int tempDiametro) {
    x=tempX;
    y=tempY;
    diametro=tempDiametro;
  }

  void movimiento() {
    if (y == -50)generarNumero = random(1, 4.9);
    if (generarNumero < 2 && generarNumero > 1) x= 50;
    if (generarNumero < 3 && generarNumero > 2) x= 150;
    if (generarNumero < 4 && generarNumero > 3) x= 250;
    if (generarNumero < 5 && generarNumero > 4) x= 350;
  }

  void teclas() {
    if (Pantalla == 1)y += 5 + velocidad;
    if (y >= width + 5) {
      y = -50;
      vida.PerderVida(vida.Vidas);
    }
    if (x == 50 && y < width && Pantalla == 1 && key == 'q') {
      y = -50;
      velocidad +=  0.25;
      puntos.Puntos ++;
    }
    if (x == 150 && y < width && Pantalla == 1 && key == 'w') {
      y = -50;
      velocidad +=  0.25;
      puntos.Puntos ++;
    }  
    if (x == 250 && y < width && Pantalla == 1 && key == 'e') {
      y = -50;
      velocidad +=  0.25;
      puntos.Puntos ++;
    }  
    if (x == 350 && y < width && Pantalla == 1 && key == 'r') {
      y = -50;
      velocidad += 0.25;
      puntos.Puntos ++;
    }
  }
  
  void display() {
    fill(0);
    ellipse(x, y, diametro, diametro);
  }
}

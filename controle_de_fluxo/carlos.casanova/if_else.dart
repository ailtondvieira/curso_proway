void main() {
  bool tocouAlarme = true;
  int cont = 0;

  for (var i = 0; i < 2; i++) {
    tocarAlarme(tocouAlarme, cont);
    cont++;
  }
}

void tocarAlarme(tocouAlarme, cont) {
  if (tocouAlarme == true) {
    vezesTocadas(cont);
  } else {
    print("Seguir durmindo");
  }
}

void vezesTocadas(cont) {
  (cont == 1) ? print("Hora de acordar") : print("Adiar +10 minutos");
  ;
}

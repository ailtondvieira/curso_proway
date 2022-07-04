void main() {
  //Garrafa d' água
  int mlAgua = 0;
  while (mlAgua <= 500) {
    print("Enchendo... ");
    mlAgua++;
  }
  print("Encheu");

  mlAgua = 0;
  do {
    print("Enchendo... ");
    mlAgua++;
    if (mlAgua == 250) {
      break;
    }
  } while (true);
  print("Encheu pela metade");
}

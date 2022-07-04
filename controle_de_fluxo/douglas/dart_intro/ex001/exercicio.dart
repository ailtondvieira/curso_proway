void main() {
  for (int i = 4; i >= 0; i--) {
    if (i >= 2) {
      print('${i + 1} patinhos foram passear!');
      print('A mamae gritou Qua! Qua! Qua!, mas só $i patinhos voltaram de lá');
    } else if (i == 1) {
      print('${i + 1} patinhos foram passear!');
      print('A mamae gritou Qua! Qua! Qua!, mas só $i patinho voltal de lá');
    } else {
      print('${i + 1} patinho foi passear!');
      print('A mamae gritou Qua! Qua! Qua!, mas nem um patinho voltou de lá');
    }
    print("");
  }
}

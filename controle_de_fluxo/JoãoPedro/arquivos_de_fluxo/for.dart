import 'dart:io';

void main() {
  List<int> nums = [1, 2, 3, 4, 5];
  Duration dez = Duration(hours: 0, minutes: 0, seconds: 2);
  for (int cont = 0; cont < 5; cont++) {
    print("Tô esperando");
    sleep(dez);
    print("já esperei o suficiente");
    sleep(dez);
    print(nums[cont]);
    sleep(dez);
  }
}

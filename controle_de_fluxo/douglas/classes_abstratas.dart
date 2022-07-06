void main() {}

abstract class Vehicle {
  String goFoward();
}

class Car implements  Vehicle{
  String goFoward() {
    return 'Moving foward';
  }
}

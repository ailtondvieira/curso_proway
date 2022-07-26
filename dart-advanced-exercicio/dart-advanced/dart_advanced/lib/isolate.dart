
import 'dart:isolate';

void sayhii (var msg) {
  print("executation from sayhii ... the message is :$msg");
}


void main(List<String> args) {
  Isolate.spawn(sayhii,"Hello!");
  Isolate.spawn(sayhii,"Whats up?!");
  Isolate.spawn(sayhii,"Welcome!");

  print("executation from main1");
  print("executation from main2");
  print("executation from main3");
  
  
}
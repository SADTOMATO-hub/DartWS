import 'dart:async';

void main(){
  print('start');
  //StreamController.broadcast()를 통해 StreamController객체를 포함.
  StreamController stctrl = StreamController.broadcast();
  stctrl.stream.listen((x)=>print('listen 1 : $x'));
  stctrl.stream.listen((x)=>print('listen 2 : $x'));

  stctrl.add(100);
  stctrl.add(200);
  stctrl.add('test');
  stctrl.add(300);
  stctrl.close();
}
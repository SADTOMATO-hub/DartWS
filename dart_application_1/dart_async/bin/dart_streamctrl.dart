import 'dart:async';

void main(){
  StreamController sctrl = StreamController();
  sctrl.stream.listen((x)=>print(x));

  sctrl.add(100);
  sctrl.add('test');
  sctrl.add(200);
  sctrl.add(300);
  sctrl.close();

  print('love');
}
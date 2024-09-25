class Memo {
    //필드
  int? no;     //primary key
  late String info;
    //생성자
  Memo({this.no, required this.info});
    //select한 결과 : Map
  Memo.from(Map<String, dynamic>map){
    this.no = map['no'] as int;
    this.info = map['info'] as String;
  }

  Map<String, dynamic> toMap(){
    //QueryBuilder를 기반으로 정보를 넘길 경우 대비
    return{
      'no' : no,
      'info' : info,
    };
  }
}
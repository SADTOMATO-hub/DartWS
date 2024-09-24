class UserVO{
  String userId;
  String passWord;
  String nickName;
  String? email;

  UserVO()
  : userId = 'any', passWord='1234', nickName = '익명';

  Map<String, dynamic> toMap(){
    return{
      'userId' : userId,
      'passWord' : passWord,
      'nickName' : nickName,
      'email' : email,
    };
  }
}
typedef ListOfInts =  List<int>;
typedef UserInfo = Map<String, String>;
void main()
{
  var name = '지수';
  name = '22';
  
  String jisu = 'jisu'; 
  var age;
  age = 12;
  age = 'twelve';
  
  // 어떤 데이터가 들어올지 모른다.
  dynamic greet;
  greet = '12';
  greet = 12;
  greet = true;
  if (greet is String){
    print(greet.length);
  }
  else if (greet is bool){
    print(greet.toString());
  }
  
  // '?'를 사용하여 null을 넣을 수 있음.
  String? job = 'Engineer';
  job = null;
  job?.isNotEmpty;
  
  // 바꿀 수 없는 값 - 값을 재할당하지 못하는 변수를 만들어준다.
  final int height = 153;
  
  // final, var, String 앞에 쓸 수 있음.
  // late는 dart에게 아직 어떤 데이터가 올지 모른다고 말해주는 것.
  late final int weight;
  weight = 47;
  
  // const는 final과 비슷. 
  // const는 compile-time에 알고 있는 값
  const API = '121212';
  
  // fetch해오는 api는 compile-time에서 모르기 때문에 final을 써야한다. 
  // final api = fetchApi();
  
  // var는 가능한 한 많이 사용하는 게 권장된다. 
  // int와 같은 타입은 class의 property를 작성할 때 사용하는 게 권장됨.
  
  // num은 integer와 double의 부모 클래스이다.
  num x = 13;
  x = 1.1;
  
  List<int> numbers = [1,2,3,4];
  numbers.add(1);
  
  var number = [1,2,3,
              'hi'];
  number.add("hi");
  
  var giveMeFive = true;
  // collection if
  var exFive = [
    1,
    2,
    3,
    4,
    if (giveMeFive) 5,
  ];
  
  //String interpolation - text에 변수를 추가하는 방법
  var tete = 'tete';
  var tete_age = 24;
  var jiju = 'jiju like $tete, and $tete is ${tete_age+2}.';
  print(jiju);
  
  //collection for
  var oldFriends = ['nico','lynn'];
  var newFriends = [
    'lewis',
    'ralph',
    for(var f in oldFriends) '💖$f💖',
  ];
  print(newFriends);
  
  //Maps
  var player = {
    'name': 'nico',
    'xp': 19.99,
    'superpower':false,
  };
  Map<int,bool>player2 = {
    1:true,
    2:false,
    3:true,
  };
  Map<List<int>,bool>player3 = {
    [1,2]:true,
    [3,4]:false,
  };
  player2.keys;
  player3.values;
  List<Map<String,Object>> player4 = [
    {
      'name': '지수',
      'height': 153,
    },
    {
      'name': '태경',
      'height': 170,
    },
  ];
  
  //Sets에 속한 모든 아이템들은 유니크하다. 
  var number4 = {1,2,3};
  Set<int> numbers2 = {1,2,3,4};
  numbers2.add(1);
  print(numbers2);
  List<int> numbers3 = [1,2,3,4];
  numbers3.add(1);
  print(numbers3);
  
  
  // function => 는 리턴이랑 같음.
  String hi(String name) => "hi $name🐰";
  print(hi('hi jisu'));
  
  // named argument -> default or required
  String hi2({String name1 = 'jiji', int age1 = 7}) => "hi $name1🐰, $age1";
  print(hi2(
    age1:22,
    name1:'hi2 jisu',
  )); 
  String hi3({
    required String name1,
    required int age1}) 
    => "hi3 $name1🐰, $age1";
  print(hi3(
    age1:22,
    name1:'hi3 jisu',
  )); 
  
  //Optional Positional Parameter 
  String hi4(
    String name,
    int age,
    [String? country = 'cuba']
  ) => 'hello $name, $age, $country';
  print(hi4('jisu',4));
  
  // QQ Operator
  String capitalizeName(String name) => name.toUpperCase();
  print(capitalizeName('yeojisu'));
  String capitalizeName2(String? name) {
    if (name != null) return name.toUpperCase();
    return 'ANON';
  }
  // ? 로 간단하게 나타내기
  String capitalizeName3(String? name) => name!=null ? name.toUpperCase():'ANON';
  // ?? 왼쪽이 null이면 오른쪽을 return 하기
  String capitalizeName4(String? name) => name?.toUpperCase() ?? 'ANON';
  
  String? nameji;
  nameji ??= 'jisu'; // 만약 name이 null이면, 다른 값을 할당하라.
  
  //Typedef
  List<int> reverseListOfNumbers(List<int> list){
    var reversed = list.reversed;
    return reversed.toList();
  }
  // 맨위에서 선언 typedef ListOfInts =  List<int>;
  ListOfInts reverseListOfNumbers2(ListOfInts list){
    var reversed = list.reversed;
    return reversed.toList();
  }
  String sayHi(UserInfo userInfo) {
    return "Hi ${userInfo['name']}";
  }
  print(sayHi({'name':'jisu', 'age':'22'}));
  
  
  
  
  
}
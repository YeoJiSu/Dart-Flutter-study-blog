import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

// flutter SDK 에 있는 3개의 core Widget 중 하나를 상송 받아야한다.
// 여기는 root 위젯이다.
class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool showTitle = true;
  void toggleTitle() {
    setState(() {
      showTitle = !showTitle;
    });
  }

  int counter = 0;
  List<int> numbers = [];
  void onClicked() {
    // setState 함수를 작성하여 State 클래스에게 데이터가 변경되었다고 알려주어야함.
    setState(() {
      counter += 1;
      numbers.add(numbers.length);
    });
  }

  // 모든 Widget은 build 메소드를 구현해야한다.
  @override // auto complete 됨.
  Widget build(BuildContext context) {
    // material(구글) 또는 cupertino(ios) 위젯을 return
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 218, 218),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              showTitle ? const MyLargeTitle() : const Text('nothing to see'),
              IconButton(
                iconSize: 100,
                onPressed: toggleTitle,
                icon: const Icon(
                  Icons.remove_red_eye_rounded,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyLargeTitle extends StatefulWidget {
  // 여기서 theme에 접근하고 싶다.
  const MyLargeTitle({
    super.key,
  });

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  @override
  void initState() {
    // 부모 요소에 의존하는 데이터를 초기화해야할 때
    super.initState();
    print("initState");
  }

  @override
  void dispose() {
    // 위젯이 스크린에서 제거될 때 호출되는 메소드
    super.dispose();
    print("dispose");
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Text(
      'My Large Title',
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context)
            .textTheme
            .titleLarge! // -> !를 붙여서 반드시 존재함을 알림.
            .color,
      ),
    );
  }
}

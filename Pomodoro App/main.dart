import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const App());
}

// flutter SDK 에 있는 3개의 core Widget 중 하나를 상송 받아야한다.
// 여기는 root 위젯이다.
class App extends StatelessWidget {
  const App({super.key});

  // 모든 Widget은 build 메소드를 구현해야한다.
  @override // auto complete 됨.
  Widget build(BuildContext context) {
    // material(구글) 또는 cupertino(ios) 위젯을 return
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          backgroundColor: const Color(0xFFE7626C),
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Color.fromARGB(255, 43, 56, 125),
          ),
        ),
        cardColor: const Color(0xFFF4EDDB),
      ),
      home: const HomeScreen(),
    );
  }
}

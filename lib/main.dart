import 'package:flutter/material.dart';
import 'Quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int counter = 0;

  List<Quiz> quizObjects = [
    Quiz("Who developed flutter ?", ["Google", "Microsoft", "Twitter"],
        "Google"),
    Quiz("question2", ["q2 Answer 1", "q2 Answer 2", "q2 Answer 3"],
        "q2 Answer 1"),
    Quiz("question3", ["q3 Answer 1", "q3 Answer 2", "q3 Answer 3"],
        "q3 Answer 3")
  ];

  void answerClick() {
    print('Answer chosen!');
    setState(() {
      if (counter < 2)
        counter = counter + 1;
      else
        counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First app'),
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Center(
                child: Column(
              children: [
                Text(
                  quizObjects[counter].question,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
                for (String item in quizObjects[counter].options)
                  ElevatedButton(onPressed: answerClick, child: Text(item)),
              ],
            ))
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}


import 'package:date_count_down/date_count_down.dart';
import 'package:flutter/material.dart';
import './countdown.dart';

void main() {
  runApp(const MyApp());
}

///CountDownText : A simple text widget that display the countdown timer
///based on the dateTime given e.g DateTime.utc(2050)

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
        child: CountDownText(
          due: DateTime.now().add(const Duration(seconds: 5)),
          finishedText: "Happy New Year!",
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          daysTextLong: " days ",
          hoursTextLong: " hours ",
          minutesTextLong: " minutes ",
          secondsTextLong: " seconds ",
          daysTextShort: " d ",
          hoursTextShort: " h ",
          minutesTextShort: " m ",
          secondsTextShort: " s ",
          onFinished: () {
            print("Countdown Finished!");
          },
          showLabel: true,
          longDateName: true,
        )
    ),
        ),
    );
  }
}

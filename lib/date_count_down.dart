library count_down_timer;

import 'dart:async';
import 'package:flutter/material.dart';

import 'countdown.dart';

///CountDownText : A simple text widget that display the countdown timer
///based on the dateTime given e.g DateTime.utc(2050)
class CountDownText extends StatefulWidget {
  CountDownText(
      {Key? key,
      required this.due,
      required this.finishedText,
      this.longDateName = false,
      this.isFinished = false,
      this.style,
      this.onFinished,
      this.showLabel = false,
      this.daysTextLong = " days ",
      this.hoursTextLong = " hours ",
      this.minutesTextLong = " minutes ",
      this.secondsTextLong = " seconds ",
      this.daysTextShort = " d ",
      this.hoursTextShort = " h ",
      this.minutesTextShort = " m ",
      this.secondsTextShort = " s ",})
      : super(key: key);

  final DateTime? due;
  //void calback
  final void Function()? onFinished;
  final String? finishedText;
  final bool? longDateName;
  final bool isFinished;
  final bool? showLabel;
  final TextStyle? style;
  final String daysTextLong;
  final String hoursTextLong;
  final String minutesTextLong;
  final String secondsTextLong;
  final String daysTextShort;
  final String hoursTextShort;
  final String minutesTextShort;
  final String secondsTextShort;

  @override
  _CountDownTextState createState() => _CountDownTextState();
}

class _CountDownTextState extends State<CountDownText> {
  Timer? timer;

  @override
  void initState() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if(!widget.isFinished) {
        setState(() {});
      }
      else timer.cancel();
    });
    super.initState();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      CountDown().timeLeft(widget.due!,
          widget.finishedText!,
          widget.daysTextLong,
          widget.hoursTextLong,
          widget.minutesTextLong,
          widget.secondsTextLong,
          widget.daysTextShort,
          widget.hoursTextShort,
          widget.minutesTextShort,
          widget.secondsTextShort,
          widget.onFinished!,
          widget.isFinished,
          longDateName: widget.longDateName, showLabel: widget.showLabel),
      style: widget.style,
    );
  }
}

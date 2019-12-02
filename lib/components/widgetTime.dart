import 'dart:async';
import 'package:flutter/material.dart';

class Countdown extends StatefulWidget {
 @override
 _CountdownState createState() => _CountdownState();
}

class _CountdownState extends State<Countdown> {

 Timer _timer;
 int seconds;

 @override
 Widget build(BuildContext context) {
  return Center(
   child: Text(constructTime(seconds)),
  );
 }

 // Time formatting, converted to the corresponding hh:mm:ss format according to the total number of seconds
 String constructTime(int seconds) {
  int hour = seconds ~/ 3600;
  int minute = seconds % 3600 ~/ 60;
  int second = seconds % 60;
  return formatTime(hour) + ":" + formatTime(minute) + ":" + formatTime(second);
 }

 // Digital formatting, converting 0-9 time to 00-09
 String formatTime(int timeNum) {
  return timeNum < 10 ? "0" + timeNum.toString() : timeNum.toString();
 }

 @override
 void initState() {
  super.initState();
  // Get the current time
  var now = DateTime.now();
  // Get a 2-minute interval
  var twoHours = now.add(Duration(minutes: 2)).difference(now);
  // Get the total number of seconds, 2 minutes for 120 seconds
  seconds = twoHours.inSeconds;
  startTimer();
 }

 void startTimer() {
  // Set 1 second callback
  const period = const Duration(seconds: 1);
  _timer = Timer.periodic(period, (timer) {
   // Update interface
   setState(() {
    // minus one second because it calls back once a second
    seconds--;
   });
   if (seconds == 0) {
    // Countdown seconds 0, cancel timer
    cancelTimer();
   }
  });
 }

 void cancelTimer() {
  if (_timer != null) {
   _timer.cancel();
   _timer = null;
  }
 }

 @override
 void dispose() {
  super.dispose();
  cancelTimer();
 }
}

Widget widgetClock() {
  return Container(
    decoration: new BoxDecoration(
      color: Colors.white,
      borderRadius:
          new BorderRadius.only(topRight: const Radius.circular(40.0)),
    ),
    height: 80,
    width: 180,
    child: Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Column(
        children: <Widget>[
          Container(
            child: Text(
              'Time remaining to vote',
              textAlign: TextAlign.center,
              // overflow: TextOverflow.ellipsis,
              style: TextStyle(fontFamily: 'OpenSans-regular', fontSize: 16),
            ),
          ),
          Container(height: 30, width: 100, child: Countdown())
        ],
      ),
    ),
  );
}
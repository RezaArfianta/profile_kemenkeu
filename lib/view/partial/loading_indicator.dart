import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        strokeWidth: 5.0,
      ),
    );
  }
}

class SmallLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:30,
      width: 30,
      child: Center(
        child: CircularProgressIndicator(
          strokeWidth: 5.0,
        ),
      ),
    );
  }
}
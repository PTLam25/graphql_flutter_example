import 'package:flutter/material.dart';

class TryAgainButton extends StatelessWidget {
  final VoidCallback onTap;

  const TryAgainButton({
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            Text('Error'),
            Text('Tap to try again'),
          ],
        ),
      ),
    );
  }
}

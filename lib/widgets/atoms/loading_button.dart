import 'package:flutter/material.dart';

class LoadingButton extends StatefulWidget {
  final Future<void> Function() onPressed;
  final String buttonText;

  const LoadingButton({
    Key? key,
    required this.onPressed,
    required this.buttonText,
  }) : super(key: key);

  @override
  _LoadingButtonState createState() => _LoadingButtonState();
}

class _LoadingButtonState extends State<LoadingButton> {
  bool _loading = false;

  void _handleButtonPress() async {
    setState(() {
      _loading = true;
    });
    await widget.onPressed();
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _loading ? null : _handleButtonPress,
      child: Row(
        children: [
          if (_loading)
            SizedBox(
              height: 20,
              width: 20,
              child: CircularProgressIndicator(),
            ),
          Padding(
            padding: _loading
                ? const EdgeInsets.only(left: 10)
                : const EdgeInsets.only(),
            child: Text(widget.buttonText),
          ),
        ],
      ),
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_spiks_test/st/generated/l10n.dart';

class RequestButton extends StatefulWidget {
  final VoidCallback onTap;
  final int timerDuration;

  const RequestButton({
    super.key,
    required this.onTap,
    this.timerDuration = 2,
  });

  @override
  State<RequestButton> createState() => _RequestButtonState();
}

class _RequestButtonState extends State<RequestButton> {
  late Timer _timer;

  /// in seconds
  /// PAY ATTENTION TO CONVERT CORRECTLY
  late int _timerValue;
  bool _isButtonAvailable = false;

  void _startTimer() {
    _timerValue = widget.timerDuration;
    setState(() {
      _isButtonAvailable = false;
    });
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (timer) {
        if (_timerValue <= 0) {
          setState(() {
            _isButtonAvailable = true;
          });
          timer.cancel();
        } else {
          setState(() {
            _timerValue--;
          });
        }
      },
    );
  }

  void _handleTap() {
    widget.onTap();
  }

  @override
  void initState() {
    _startTimer();
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: _isButtonAvailable ? 1 : .7,
      child: FilledButton(
        onPressed: _isButtonAvailable ? _handleTap : null,
        child: SizedBox(
          width: double.infinity,
          child: Center(
            child: Text(
              _isButtonAvailable
                  ? L10n.of(context).e_requestAgain
                  : L10n.of(context).e_requestInSomeTime(
                      DateFormat('mm:ss').format(
                        DateTime.fromMillisecondsSinceEpoch(_timerValue * 1000, isUtc: true),
                      ),
                    ),
            ),
          ),
        ),
      ),
    );
  }
}

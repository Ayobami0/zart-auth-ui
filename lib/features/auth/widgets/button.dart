import 'package:flutter/material.dart';

class ZartButton extends StatelessWidget {
  const ZartButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.isLoading = false,
    this.isEnabled = true,
  });

  final VoidCallback onPressed;
  final Widget child;
  final bool isLoading;
  final bool isEnabled;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 16),
      ),
      onPressed: isEnabled ? onPressed : null,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 8,
        children: [
          if (isLoading)
            SizedBox.square(
              dimension: 16,
              child: CircularProgressIndicator(strokeWidth: 2),
            ),
          child,
        ],
      ),
    );
  }
}

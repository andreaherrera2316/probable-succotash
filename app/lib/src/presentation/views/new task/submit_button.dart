import 'package:flutter/material.dart';
import 'package:todo/src/presentation/shared%20resources/palette.dart';

class SubmitButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget? child;
  final double? width;
  final double? height;

  const SubmitButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var borderRadius = BorderRadius.circular(8.0);
    var p = Palette();

    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return const Color(0xFFCCCCCC); // Button color when disabled
              }
              return p.primary1; // Button color when enabled
            },
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: borderRadius,
            ),
          ),
          elevation: MaterialStateProperty.resolveWith<double>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return 0.0; // No elevation when disabled
              }
              return 4.0; // Elevation when enabled
            },
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18),
          child: child,
        ),
      ),
    );
  }
}

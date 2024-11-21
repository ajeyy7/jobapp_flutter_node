import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final Color color;
  final Widget widget;
  final void Function()? onTap;
  final double? width;
  final double? height;

  const CommonButton(
      {super.key,
      this.onTap,
      required this.color,
      required this.widget,
      this.width,
      this.height = 50});

  @override
  Widget build(BuildContext context) {
    final doublewidth = width ?? MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Container(
          height: height,
          width: doublewidth,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(8)),
          child: Center(child: widget),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustonButtonWidget extends StatefulWidget {
  final bool enabled;
  final String text;
  final double textSize;
  final FontWeight fontWeight;
  final bool outline;
  final bool shrinkWrap;
  final bool noBorder;
  final VoidCallback? onPressed;
  final Color? color;
  final EdgeInsets? padding;

  const CustonButtonWidget({
    Key? key,
    this.enabled = true,
    required this.text,
    this.textSize = 14,
    this.fontWeight = FontWeight.bold,
    this.outline = false,
    this.shrinkWrap = false,
    this.noBorder = false,
    required this.onPressed,
    this.color,
    this.padding,
  })  : assert(!noBorder || !outline, "noBorder and outline can't be active together."),
        super(key: key);

  @override
  State<CustonButtonWidget> createState() => _CustonButtonWidgetState();
}

class _CustonButtonWidgetState extends State<CustonButtonWidget> {
  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    return MaterialButton(
      shape: RoundedRectangleBorder(
          side: widget.noBorder
              ? const BorderSide(color: Colors.transparent)
              : widget.outline
                  ? BorderSide(color: widget.color ?? primaryColor)
                  : const BorderSide(color: Colors.transparent)),
      padding: widget.padding,
      materialTapTargetSize: widget.shrinkWrap ? MaterialTapTargetSize.shrinkWrap : null,
      color: (widget.outline || widget.noBorder) ? Colors.transparent : widget.color ?? primaryColor,
      onPressed: widget.enabled ? widget.onPressed : null,
      child: Text(
        widget.text,
        style: TextStyle(
          color: (widget.outline || widget.noBorder) ? widget.color ?? primaryColor : Colors.white,
          fontSize: widget.textSize,
          fontWeight: widget.fontWeight,
        ),
      ),
    );
  }
}

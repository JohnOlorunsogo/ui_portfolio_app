import 'package:flutter/material.dart';
import 'package:ui_portfolio_app/model/designer.dart';

class ImageContainer extends StatefulWidget {
  const ImageContainer({
    super.key,
    required this.designer,
    required this.size,
    required this.index,
    this.mobileFactor,
  });

  final Designer designer;
  final double size;
  final int index;
  final double? mobileFactor;

  @override
  State<ImageContainer> createState() => _ImageContainerState();
}

class _ImageContainerState extends State<ImageContainer> {
  bool hovered = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      width: widget.mobileFactor == null
          ? widget.size * 0.23
          : widget.mobileFactor! * 0.14,
      height: widget.mobileFactor == null
          ? widget.size * 0.13
          : widget.mobileFactor! * 0.14,
      decoration: BoxDecoration(
        borderRadius: widget.mobileFactor == null
            ? BorderRadius.circular(widget.size * 0.0146)
            : BorderRadius.circular(widget.mobileFactor! * 0.022),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: Opacity(
              opacity: hovered ? 0.5 : 1,
              child: Image.asset(
                widget.designer.portfolioPath[widget.index],
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                hoverColor: Colors.transparent,
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    hovered = value;
                  });
                },
              ),
            ),
          ),
          if (hovered)
            const Center(
              child: Text(
                "Read More",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
        ],
      ),
    );
  }
}

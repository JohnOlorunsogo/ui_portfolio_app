import 'package:flutter/material.dart';
import 'package:ui_portfolio_app/model/designer.dart';

class ImageContainer extends StatefulWidget {
  const ImageContainer({
    super.key,
    required this.designer,
    required this.size,
    required this.index,
  });

  final Designer designer;
  final double size;
  final int index;

  @override
  State<ImageContainer> createState() => _ImageContainerState();
}

class _ImageContainerState extends State<ImageContainer> {
  bool hovered = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      width: widget.size * 0.1245,
      height: widget.size * 0.1245,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: Opacity(
              opacity: hovered ? 0.5 : 1,
              child: ElevatedButton(
                clipBehavior: Clip.hardEdge,
                onPressed: () {},
                onHover: (value) {
                  setState(() {
                    hovered = value;
                  });
                },
                child: Image.asset(
                  widget.designer.portfolioPath[widget.index],
                  fit: BoxFit.cover,
                ),
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

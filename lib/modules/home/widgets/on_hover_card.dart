import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:github_portfolio/models/global_variables.dart';

class OnHoverCard extends StatefulWidget {
  final double width;
  final double height;
  final Widget firstWidget;
  final Widget onHoverWidget;
  bool useBorderRadius;

  OnHoverCard(
      {Key? key,
      required this.firstWidget,
      required this.onHoverWidget,
      required this.width,
      required this.height,
      this.useBorderRadius = true})
      : super(key: key);

  @override
  State<OnHoverCard> createState() => _OnHoverCardState();
}

class _OnHoverCardState extends State<OnHoverCard> {
  bool? animate;

  @override
  void initState() {
    super.initState();
    animate = false;
  }

  @override
  Widget build(BuildContext context) {
    bool isMobile = (defaultTargetPlatform == TargetPlatform.iOS || defaultTargetPlatform == TargetPlatform.android);
    return isMobile
        ? GestureDetector(
            onTap: () {
              setState(() {
                animate = !animate!;
              });
            },
            child: mainWidget(),
          )
        : mainWidget();
  }

  Widget mainWidget() {
    return MouseRegion(
      onEnter: (a) {
        setState(() {
          animate = true;
        });
      },
      onExit: (a) {
        setState(() {
          animate = false;
        });
      },
      child: Container(
        decoration: BoxDecoration(),
        height: widget.height,
        width: widget.width,
        clipBehavior: Clip.hardEdge,
        child: Stack(
          children: [
            Container(
              height: widget.height,
              width: widget.width,
              decoration: BoxDecoration(
                borderRadius: widget.useBorderRadius
                    ? BorderRadius.circular(padding)
                    : BorderRadius.zero,
              ),
              child: ClipRRect(
                borderRadius: widget.useBorderRadius
                    ? BorderRadius.circular(padding)
                    : BorderRadius.zero,
                child: widget.firstWidget,
              ),
            ),
            AnimatedContainer(
              width: widget.width,
              height: widget.height,
              decoration: BoxDecoration(
                color: animate! ? Colors.white.withOpacity(0.5) : Colors.transparent,
                borderRadius: widget.useBorderRadius
                    ? BorderRadius.circular(padding)
                    : BorderRadius.zero,
              ),
              padding: EdgeInsets.only(top: animate! ? 0 : widget.height),
              duration: Duration(milliseconds: 200),
              child: widget.onHoverWidget,
            ),
          ],
        ),
      ),
    );
  }
}

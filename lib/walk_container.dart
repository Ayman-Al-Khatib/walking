import 'dart:math';
import 'package:flutter/material.dart';

class WalkContainer extends StatefulWidget {
  final Duration? duration;
  final Curve? curve;
  final List<double>? steps;
  final List<Color>? colors;
  final double? thicken;
  final double? angle;
  final double? width;
  final double? height;
  final bool? reverse;
  final Widget? child;
  final BorderRadius? borderRadius;
  final TileMode? tileMode;
  final Alignment? alignment;
  const WalkContainer(
      {super.key,
      this.height,
      this.width,
      this.child,
      this.duration,
      this.borderRadius,
      this.steps,
      this.colors,
      this.thicken,
      this.curve,
      this.angle,
      this.reverse,
      this.tileMode,
      this.alignment});
  @override
  State<WalkContainer> createState() => _WalkContainerState();
}

class _WalkContainerState extends State<WalkContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.duration ?? const Duration(milliseconds: 2000),
      vsync: this,
    )..repeat(reverse: widget.reverse ?? false);
    _animation = CurvedAnimation(
      parent: _controller,
      curve: widget.curve ?? Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double thicken = min(
        min(min(widget.height ?? double.infinity, size.height),
                min(widget.width ?? double.infinity, size.width)) /
            12,
        widget.thicken ?? 2);

    return LayoutBuilder(
      builder: (context, constraints) {
        if (widget.colors != null && widget.colors!.length == 1) {
          widget.colors!.add(widget.colors![0]);
        }

        if ((widget.colors != null &&
                widget.steps != null &&
                widget.colors?.length != widget.steps?.length) ||
            (widget.colors == null &&
                widget.steps != null &&
                widget.steps!.length > 2)) {
          throw ('The size of the colors matrix must match the stops,for example\n'
              'colors:[Colors.red,Colors.orange,Colors.amber]\n'
              'steps:[0.1,0.5,1.0]\n'
              'Default ⬇⬇⬇\n'
              'colors:[Colors.deepPurpleAccent,Colors.deepPurple]\n'
              'steps:null\n');
        }

        if (widget.angle != null &&
            (widget.angle! <= 0.0 || widget.angle! > 360)) {
          throw ('The angle shold be between 0 and 360 (Error => ${widget.angle})');
        }
        if (constraints.minHeight == double.infinity) {
          throw ('The height cannot be infintie');
        }
        if (constraints.minWidth == double.infinity) {
          throw ('The width cannot be infintie');
        }
        if ((widget.height ?? double.infinity) < 0) {
          throw ('The height of the container cannot be negative');
        }
        if ((widget.width ?? double.infinity) < 0) {
          throw ('The width of the container cannot be negative');
        }

        return ClipRRect(
          borderRadius: widget.borderRadius?.copyWith(
                  topLeft: (widget.borderRadius?.topLeft ?? Radius.zero) +
                      const Radius.circular(3),
                  topRight: (widget.borderRadius?.topRight ?? Radius.zero) +
                      const Radius.circular(3),
                  bottomLeft: (widget.borderRadius?.bottomLeft ?? Radius.zero) +
                      const Radius.circular(3),
                  bottomRight:
                      (widget.borderRadius?.bottomRight ?? Radius.zero) +
                          const Radius.circular(3)) ??
              BorderRadius.circular(3),
          child: AnimatedBuilder(
            animation: _animation,
            builder: (context, child) => Container(
              width: widget.width,
              height: widget.height,
              decoration: BoxDecoration(
                color: Colors.yellow,
                gradient: SweepGradient(
                  tileMode: widget.tileMode ?? TileMode.decal,
                  stops: widget.steps,
                  colors: widget.colors ??
                      [
                        Colors.pink.shade400,
                        Colors.pink.shade400,
                        Colors.pink.shade400,
                        Colors.cyan.shade400,
                      ],
                  startAngle: 0,
                  endAngle: (widget.angle ?? 90) * pi / 180.0,
                  center: widget.alignment ?? Alignment.center,
                  transform: GradientRotation(
                    _animation.value * 2.0 * pi,
                  ),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(thicken),
                child: ClipRRect(
                  borderRadius: widget.borderRadius ?? BorderRadius.zero,
                  child: Container(
                    color: Colors.white,
                    child: widget.child,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

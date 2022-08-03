import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const StaggerDemo(),
    ),
  );
}

class StaggerDemo extends StatefulWidget {
  const StaggerDemo({Key? key}) : super(key: key);

  @override
  State<StaggerDemo> createState() => _StaggerDemoState();
}

typedef SingleTicker = TickerProviderStateMixin<StaggerDemo>;

class _StaggerDemoState extends State<StaggerDemo> with SingleTicker {
  late AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  Future<void> _playAnimation() async {
    try {
      while (true) {
        await animationController.forward().orCancel;
        await animationController.reverse().orCancel;
      }
    } on TickerCanceled {
      print("opa, deu erro");
    }
  }

  @override
  Widget build(BuildContext context) {
    timeDilation = 2.0;
    return Scaffold(
      appBar: AppBar(),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          _playAnimation();
        },
        child: Center(
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey,
              border: Border.all(
                width: 1,
                color: Colors.grey.shade100,
              ),
            ),
            child: StaggeredAnimation(
              animationController: animationController.view,
            ),
          ),
        ),
      ),
    );
  }
}

class StaggeredAnimation extends StatelessWidget {
  final Animation<double> animationController;
  final Animation<double> animationOpacity;
  final Animation<double> animationWidth;
  final Animation<double> animationHeight;
  final Animation<EdgeInsets> animationPadding;
  final Animation<BorderRadius?> animationBorderRadius;
  final Animation<Color?> animationColor;

  StaggeredAnimation({Key? key, required this.animationController})
      : animationOpacity = Tween<double>(
          begin: 0.0,
          end: 1.0,
        ).animate(CurvedAnimation(
          parent: animationController,
          curve: const Interval(
            0.0,
            0.10,
            curve: Curves.ease,
          ),
        )),
        animationWidth = Tween<double>(
          begin: 50.0,
          end: 150.0,
        ).animate(
          CurvedAnimation(
            parent: animationController,
            curve: const Interval(
              0.125,
              0.250,
              curve: Curves.ease,
            ),
          ),
        ),
        animationHeight = Tween<double>(
          begin: 50.0,
          end: 150.0,
        ).animate(
          CurvedAnimation(
            parent: animationController,
            curve: const Interval(
              0.250,
              0.375,
              curve: Curves.ease,
            ),
          ),
        ),
        animationPadding = EdgeInsetsTween(
          begin: const EdgeInsets.only(bottom: 16),
          end: const EdgeInsets.only(bottom: 75),
        ).animate(
          CurvedAnimation(
            parent: animationController,
            curve: const Interval(
              0.250,
              0.375,
              curve: Curves.ease,
            ),
          ),
        ),
        animationBorderRadius = BorderRadiusTween(
          begin: BorderRadius.circular(4),
          end: BorderRadius.circular(75),
        ).animate(
          CurvedAnimation(
            parent: animationController,
            curve: const Interval(
              0.375,
              0.500,
              curve: Curves.ease,
            ),
          ),
        ),
        animationColor = ColorTween(
          begin: Colors.indigo[100],
          end: Colors.orange[400],
        ).animate(
          CurvedAnimation(
            parent: animationController,
            curve: const Interval(
              0.500,
              0.750,
              curve: Curves.ease,
            ),
          ),
        ),
        super(key: key);

  Widget _buildAnimation(BuildContext context, Widget? child) {
    return Container(
      padding: animationPadding.value,
      alignment: Alignment.bottomCenter,
      child: Opacity(
        opacity: animationOpacity.value,
        child: Container(
          width: animationWidth.value,
          height: animationHeight.value,
          decoration: BoxDecoration(
            color: animationColor.value,
            border: Border.all(
              color: Colors.indigo[300]!,
              width: 3.0,
            ),
            borderRadius: animationBorderRadius.value,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: _buildAnimation,
    );
  }
}

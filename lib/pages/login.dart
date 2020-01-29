import 'package:bezier_animation/utils.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin{

  bool isLoginFormEnabled = false;
  AnimationController _controller;
  Animation<double> _animation;

  @override
  void initState()
  {
    super.initState();
    _controller =  AnimationController(vsync: this, duration: Duration(milliseconds: 1000));
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
      reverseCurve: Curves.easeIn,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[ 
          AnimatedBuilder(
            animation: _controller,
            builder: (context, anim) => LoginPageTopBlob(_animation.value),
          ),
          Container(
            padding: EdgeInsets.only(top : MediaQuery.of(context).size.height * 0.6, left : 60, right: 60),
            child : RoundedButton(
              fullWidth: true,
              vertical: 18.0,
              rounded: 32.0,
              onPressed: (){
                setState(() {
                  isLoginFormEnabled = !isLoginFormEnabled;
                  if(!isLoginFormEnabled) _controller.reverse(from : 1.0);
                  else _controller.forward(from: 0.0);
                });
              },
              child: Text(isLoginFormEnabled ? "Go Backward" : "Go Forward", style: TextStyle(color:  AppColors.white, fontSize: 18, fontWeight: FontWeight.bold),),
            )
          )
        ],
      ),
    );
  }
}

class LoginPageTopBlob extends StatelessWidget {
  final double progress;
  LoginPageTopBlob(this.progress);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
        clipper: LoginBlobClipper(progress),
        child: Container(
            color: Theme.of(context).primaryColor,
            height: MediaQuery.of(context).size.height * (0.405 + (0.337 - 0.405) * progress),
        ),
    );
  }
}

class LoginBlobClipper extends CustomClipper<Path>{

  final double progress;
  LoginBlobClipper(this.progress);

  @override
  Path getClip(Size size) {
    Path path = Path();
    final double artboardW = 414+ (0) * progress;
    final double artboardH = 363.15+ (-61.45999999999998) * progress;
    final double _xScaling = size.width / artboardW;
    final double _yScaling = size.height / artboardH;
    path.lineTo((0+ (0) * progress) * _xScaling,(341.78499999999997+ (-123.94399999999996) * progress) * _yScaling);
    path.cubicTo((0+ (0) * progress) * _xScaling,(341.78499999999997+ (-123.94399999999996) * progress) * _yScaling,(23.465+ (-4.3210000000000015) * progress) * _xScaling,(363.15099999999995+ (-97.231) * progress) * _yScaling,(71.55699999999999+ (-4.319999999999993) * progress) * _xScaling,(363.15099999999995+ (-97.231) * progress) * _yScaling,);
    path.cubicTo((119.649+ (-4.319000000000017) * progress) * _xScaling,(363.15099999999995+ (-97.231) * progress) * _yScaling,(142.221+ (-29.465000000000003) * progress) * _xScaling,(300.186+ (-65.57499999999999) * progress) * _yScaling,(203.299+ (-29.462000000000018) * progress) * _xScaling,(307.21+ (-65.57499999999999) * progress) * _yScaling,);
    path.cubicTo((264.377+ (-29.45900000000003) * progress) * _xScaling,(314.234+ (-65.57499999999999) * progress) * _yScaling,(282.66999999999996+ (-9.799999999999955) * progress) * _xScaling,(333.47299999999996+ (-31.781999999999982) * progress) * _yScaling,(338.412+ (-9.800000000000011) * progress) * _xScaling,(333.47299999999996+ (-31.781999999999982) * progress) * _yScaling,);
    path.cubicTo((394.154+ (-9.800000000000068) * progress) * _xScaling,(333.47299999999996+ (-31.781999999999982) * progress) * _yScaling,(414+ (0) * progress) * _xScaling,(254.199+ (-52.22200000000001) * progress) * _yScaling,(414+ (0) * progress) * _xScaling,(254.199+ (-52.22200000000001) * progress) * _yScaling,);
    path.cubicTo((414+ (0) * progress) * _xScaling,(254.199+ (-52.22200000000001) * progress) * _yScaling,(414+ (0) * progress) * _xScaling,(0+ (0) * progress) * _yScaling,(414+ (0) * progress) * _xScaling,(0+ (0) * progress) * _yScaling,);
    path.cubicTo((414+ (0) * progress) * _xScaling,(0+ (0) * progress) * _yScaling,(2.1316282072803006e-14+ (0) * progress) * _xScaling,(0+ (0) * progress) * _yScaling,(2.1316282072803006e-14+ (0) * progress) * _xScaling,(0+ (0) * progress) * _yScaling,);
    path.cubicTo((2.1316282072803006e-14+ (0) * progress) * _xScaling,(0+ (0) * progress) * _yScaling,(0+ (0) * progress) * _xScaling,(341.78499999999997+ (-123.94399999999996) * progress) * _yScaling,(0+ (0) * progress) * _xScaling,(341.78499999999997+ (-123.94399999999996) * progress) * _yScaling,);
    return path;
  }

  Path _collapsedClip(Size size){
    Path path = Path();
    final double _xScaling = size.width / 414;
    final double _yScaling = size.height / 301.69;
    path.lineTo(0 * _xScaling,217.841 * _yScaling);
    path.cubicTo(0 * _xScaling,217.841 * _yScaling,19.144 * _xScaling,265.91999999999996 * _yScaling,67.237 * _xScaling,265.91999999999996 * _yScaling,);
    path.cubicTo(115.32999999999998 * _xScaling,265.91999999999996 * _yScaling,112.756 * _xScaling,234.611 * _yScaling,173.837 * _xScaling,241.635 * _yScaling,);
    path.cubicTo(234.91799999999998 * _xScaling,248.659 * _yScaling,272.87 * _xScaling,301.691 * _yScaling,328.61199999999997 * _xScaling,301.691 * _yScaling,);
    path.cubicTo(384.3539999999999 * _xScaling,301.691 * _yScaling,414 * _xScaling,201.977 * _yScaling,414 * _xScaling,201.977 * _yScaling,);
    path.cubicTo(414 * _xScaling,201.977 * _yScaling,414 * _xScaling,0 * _yScaling,414 * _xScaling,0 * _yScaling,);
    path.cubicTo(414 * _xScaling,0 * _yScaling,2.1316282072803006e-14 * _xScaling,0 * _yScaling,2.1316282072803006e-14 * _xScaling,0 * _yScaling,);
    path.cubicTo(2.1316282072803006e-14 * _xScaling,0 * _yScaling,0 * _xScaling,217.841 * _yScaling,0 * _xScaling,217.841 * _yScaling,);
    return path;
  }

  Path _expandedClip(Size size){
    Path path = Path();

    final double _xScaling = size.width / 414;
    final double _yScaling = size.height / 363.15;
    path.lineTo(0 * _xScaling,341.78499999999997 * _yScaling);
    path.cubicTo(0 * _xScaling,341.78499999999997 * _yScaling,23.465 * _xScaling,363.15099999999995 * _yScaling,71.55699999999999 * _xScaling,363.15099999999995 * _yScaling,);
    path.cubicTo(119.649 * _xScaling,363.15099999999995 * _yScaling,142.221 * _xScaling,300.186 * _yScaling,203.299 * _xScaling,307.21 * _yScaling,);
    path.cubicTo(264.377 * _xScaling,314.234 * _yScaling,282.66999999999996 * _xScaling,333.47299999999996 * _yScaling,338.412 * _xScaling,333.47299999999996 * _yScaling,);
    path.cubicTo(394.154 * _xScaling,333.47299999999996 * _yScaling,414 * _xScaling,254.199 * _yScaling,414 * _xScaling,254.199 * _yScaling,);
    path.cubicTo(414 * _xScaling,254.199 * _yScaling,414 * _xScaling,0 * _yScaling,414 * _xScaling,0 * _yScaling,);
    path.cubicTo(414 * _xScaling,0 * _yScaling,2.1316282072803006e-14 * _xScaling,0 * _yScaling,2.1316282072803006e-14 * _xScaling,0 * _yScaling,);
    path.cubicTo(2.1316282072803006e-14 * _xScaling,0 * _yScaling,0 * _xScaling,341.78499999999997 * _yScaling,0 * _xScaling,341.78499999999997 * _yScaling,);
    
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

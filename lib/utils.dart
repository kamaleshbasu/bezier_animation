import 'package:flutter/material.dart';

class AppButton extends StatelessWidget{

	final void Function() onPressed;
	final dynamic child;
	final Color color;
	final double elevation;
	final dynamic padding;
	final ShapeBorder shape;
	final bool fullWidth;

	AppButton({
		@required this.onPressed,
		@required this.child,
		elevation, padding,
		color,
		shape,
		fullWidth
	}) :
		this.elevation = elevation ?? 8.0,
		this.fullWidth = fullWidth ?? false,
		this.padding = padding ?? 14.0,
		this.color = color ?? AppColors.sunsetYellow,
		this.shape = shape ?? RoundedRectangleBorder(borderRadius: new BorderRadius.circular(8.0))
		;

	@override
	Widget build(BuildContext context) {
		final _child = child is String ? Text(child.toUpperCase()) : child;
		final _padding = padding is EdgeInsets ? padding : EdgeInsets.all(padding);
		var raisedButton = RaisedButton(
			elevation: elevation,
			padding: _padding,
			color : color,
			shape: shape,
			onPressed: onPressed,
			child : _child,
			disabledColor: AppColors.white.shade200,
			disabledTextColor: AppColors.moldyGreen.shade600,
		);
		return fullWidth ? SizedBox(	
  			width: double.infinity,
			child: raisedButton,
		) : raisedButton;
	}
}

class RoundedButton extends AppButton {
 	final void Function() onPressed;
	final dynamic child;
	final Color color;
	final double elevation, rounded, vertical, horizontal;
	final bool fullWidth;

	RoundedButton({
		@required this.onPressed,
		@required this.child,
		elevation, rounded, vertical, horizontal,
		color,
		fullWidth
	}) :
		this.rounded =  rounded ?? 20,
		this.elevation = elevation ?? 8.0,
		this.vertical = vertical ?? 12.0,
		this.horizontal = horizontal ?? 24.0,
		this.color = color ?? AppColors.sunsetYellow,
		this.fullWidth = fullWidth ?? false;

	@override
	Widget build(BuildContext context) {
		final _child = child is String ? Text(child.toUpperCase()) : child;
		var raisedButton = RaisedButton(
			elevation: elevation,
			padding: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
			color : color,
			shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(rounded)),
			onPressed: onPressed,
			child : _child,
			disabledColor: AppColors.white.shade200,
			disabledTextColor: AppColors.moldyGreen.shade600,
		);
		return fullWidth ? SizedBox(	
  			width: double.infinity,
			child: raisedButton,
		) : raisedButton;
	}
}


class AppColors{
	static final MaterialColor moldyGreen = createSwatch(255, 91, 53,);
	static final MaterialColor sunsetYellow = createSwatch(33, 22, 81,);
	static final MaterialColor white = createSwatch(255, 255, 255,);
}

MaterialColor createSwatch(int r, int g, int b){
	Map<int, Color> swatch = {};
	List<int> opacities = [50, 100, 200, 300, 400, 500, 600, 700, 800, 900];
	for(int opacity in opacities)
		swatch[opacity] = Color.fromRGBO(r, g, b, opacity/1000);
	return MaterialColor(
		Color.fromRGBO(r, g, b, 1).value,
		swatch
	);
}
import 'package:flutter/material.dart';

class BaseView extends StatelessWidget {
  final Widget body;
  final String? titleText;
  final Color? appBarColor;
  final Color? color;
  final bool resizeToAvoidBottomInset;
  final WillPopCallback? onBackCallback;
  final List<Widget> actions;
  final EdgeInsets padding;
  final Widget? bottomSheet;
  final PreferredSizeWidget? appBar;
  final FloatingActionButtonLocation? fabLocation;
  final Widget? floatingActionButton;
  final Widget? bottomNavigationBar;
  final Widget? animatedBottomNavigationBar;
  final Widget? leading;
  final PreferredSizeWidget? bottomWidget;
  final double elevation;
  final bool extentBody;
  final TextStyle? titleStyle;
  final bool? centerTitle;
  const BaseView(
      {super.key,
      this.titleText,
      this.centerTitle,
      this.appBar,
      this.fabLocation,
      this.titleStyle,
      this.floatingActionButton,
      required this.body,
      this.appBarColor,
      this.color = Colors.white,
      this.resizeToAvoidBottomInset = true,
      this.onBackCallback,
      this.bottomSheet,
      this.padding = const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      this.actions = const [],
      this.bottomNavigationBar,
      this.bottomWidget,
      this.elevation = 0,
      this.leading,
      this.extentBody = false,
      this.animatedBottomNavigationBar});

  @override
  Widget build(BuildContext context) => WillPopScope(
      onWillPop: onBackCallback,
      child: Scaffold(
          extendBody: extentBody,
          floatingActionButtonLocation: fabLocation,
          floatingActionButton: floatingActionButton,
          backgroundColor: color,
          bottomNavigationBar: bottomNavigationBar,
          bottomSheet: bottomSheet,
          resizeToAvoidBottomInset: resizeToAvoidBottomInset,
          appBar: appBar ?? toolbar(context),
          body: Padding(padding: padding, child: body)));

  PreferredSize toolbar(BuildContext context) => PreferredSize(
        preferredSize: Size.fromHeight(bottomWidget != null
            ? 140.0
            : titleText != null
                ? 80.0
                : 0.0),
        child: AppBar(
          actions: actions,
          toolbarHeight: 100,
          centerTitle: centerTitle,
          leading: leading,
          elevation: elevation,
          title: Text(
            titleText ?? '',
            style: titleStyle,
          ),
          bottom: bottomWidget,
        ),
      );
}

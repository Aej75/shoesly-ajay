import 'package:code_test/core/widgets/app_outlined_text_button.dart';
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class PriceTotalAndActionButtonView extends StatelessWidget {
  final String buttonText;
  final String title;
  final String subTitle;
  final VoidCallback onButtonPressed;
  const PriceTotalAndActionButtonView(
      {super.key,
      required this.buttonText,
      required this.title,
      required this.subTitle,
      required this.onButtonPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Colors.white.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 3)), // changes position of shadow
      ]),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.titleSmall,
              ),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.bodyLarge,
              )
            ],
          ),
          const Spacer(),
          AppOutlinedTextButton(text: buttonText, onPressed: onButtonPressed)
              .width(MediaQuery.sizeOf(context).width / 2.8)
              .height(50)
        ],
      ),
    );
  }
}


import 'package:doctor_app/constant/App_Colors.dart';
import 'package:flutter/material.dart';

class DropDownButton extends StatefulWidget {
  final String buttonText;
  final List<Widget>? menuItems; // List of Row or Column widgets

  DropDownButton({
    required this.buttonText,
    this.menuItems,
  });

  @override
  _DropDownButtonState createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  bool isMenuVisible = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isMenuVisible = !isMenuVisible;
            });
          },
          child: Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: isMenuVisible ? AppColors.kWhiteF7 : AppColors.kWhiteF7,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      widget.buttonText,
                      // style: AppStyles().montserrat(17,  isMenuVisible ? AppColor.kTextWhiteColor : AppColor.kTextBlackColor, FontWeight.w700)

                  ),
                  Icon(
                      isMenuVisible?
                       Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down

                  )
                ],
              ),
            ),
          ),
        ),
        if (isMenuVisible && widget.menuItems != null)
          Container(
            padding: EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: widget.menuItems!,
            ),
          ),
      ],
    );
  }
}




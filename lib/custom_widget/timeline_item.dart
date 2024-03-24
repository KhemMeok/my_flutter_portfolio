import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/custom_widget/measure_widget.dart';
import 'package:my_flutter_portfolio/custom_widget/app_colors.dart';
import 'package:my_flutter_portfolio/custom_widget/responsive.dart';

class TimeLineItem extends StatelessWidget {
  const TimeLineItem({
    super.key,
    required this.title,
    required this.description,
    this.isLastChild = false,
  });
  final bool isLastChild;
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return OrigChildWH(
      builder: (context, size, child) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(6)),
                      ),
                      Flexible(
                          child: Text(title,
                              style: TextStyle(
                                  color: AppColors.textColor,
                                  fontSize: Responsive.fontSizeContent(context),
                                  fontWeight: FontWeight.w500))),
                    ],
                  ),
                  Row(
                    children: [
                      if (!isLastChild) ...[
                        CustomPaint(
                          size: Size(10, size.height - 20),
                          painter: VerticalLine(),
                        ),
                        SizedBox(width: 10),
                      ] else ...[
                        SizedBox(width: 20, height: 20),
                      ],
                      Flexible(
                          child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                description,
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize:
                                        Responsive.fontSizeContent(context),
                                    fontWeight: FontWeight.w300),
                              ))),
                    ],
                  )
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

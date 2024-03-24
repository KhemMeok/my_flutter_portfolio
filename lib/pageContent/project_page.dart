import 'package:flutter/material.dart';
import '../custom_widget/app_colors.dart';
import '../custom_widget/responsive.dart';

class PageThreeContent extends StatelessWidget {
  const PageThreeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      padding: MediaQuery.of(context).size.width > 800
          ? const EdgeInsets.fromLTRB(30, 30, 30, 0)
          : const EdgeInsets.fromLTRB(30, 0, 30, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [],
              ),
            ),
          ),
          // Footer
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Center(
              child: Text(
                'Developed by Meok Khem, using @Flutter',
                style: TextStyle(
                    color: AppColors.textColor,
                    fontSize: Responsive.fontSizeContent(context),
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

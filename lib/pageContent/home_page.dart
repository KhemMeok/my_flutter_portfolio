import 'package:flutter/material.dart';
import '../custom_widget/app_colors.dart';
import '../custom_widget/responsive.dart';

class PageOneContent extends StatelessWidget {
  const PageOneContent({super.key});

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
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.width > 800
                              ? 25
                              : 15),
                      Text(
                        'Meok Khem',
                        style: TextStyle(
                            color: AppColors.textColor,
                            fontSize: Responsive.fontSizeTitle(context),
                            fontWeight: FontWeight.bold),
                      ),
                      Text('Back-end Developer',
                          style: TextStyle(
                              color: AppColors.textColor,
                              fontSize: Responsive.fontSizeTitle(context),
                              fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10),
                      Text(
                        "I'm a Back-end developer with over 2 years of experience in development, teaching, and management. I also have experience with Full-stack web applications.",
                        style: TextStyle(
                            color: AppColors.textColor,
                            fontSize: Responsive.fontSizeContent(context),
                            fontWeight: FontWeight.w500),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                  SizedBox(
                      height:
                          MediaQuery.of(context).size.width > 800 ? 50 : 30),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: ImageIcon(
                            const AssetImage("lib/image/git.png"),
                            size: MediaQuery.of(context).size.width > 800
                                ? 70
                                : 55,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(width: 20),
                        IconButton(
                          onPressed: () {},
                          icon: ImageIcon(
                            const AssetImage("lib/image/telegram.png"),
                            size: MediaQuery.of(context).size.width > 800
                                ? 70
                                : 55,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(width: 20),
                        IconButton(
                          onPressed: () {},
                          icon: ImageIcon(
                            const AssetImage("lib/image/mail.png"),
                            size: MediaQuery.of(context).size.width > 800
                                ? 70
                                : 55,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
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

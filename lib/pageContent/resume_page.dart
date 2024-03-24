import 'package:flutter/material.dart';
import '../custom_widget/app_colors.dart';
import '../custom_widget/responsive.dart';
import '../custom_widget/timeline_item.dart';

class PageTwoContent extends StatelessWidget {
  const PageTwoContent({super.key});

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
                  Text('Profile',
                      style: TextStyle(
                          color: AppColors.textColor,
                          fontSize: Responsive.fontSizeTitle(context),
                          fontWeight: FontWeight.bold)),
                  Text(
                    "I'm a Back-end developer with over 2 years of experience in development, teaching. I also have experience with Full-stack web applications.",
                    style: TextStyle(
                        color: AppColors.textColor,
                        fontSize: Responsive.fontSizeContent(context),
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width > 800 ? 20 : 15,
                  ),
                  Text(
                    'Education',
                    style: TextStyle(
                        color: AppColors.textColor,
                        fontSize: Responsive.fontSizeTitle(context),
                        fontWeight: FontWeight.bold),
                  ),
                  const TimeLineItem(
                      title: 'Spring Boot Development Course',
                      description: 'October 2022 to june 2023 online course'),
                  const TimeLineItem(
                    title: 'Bachelor Degree of Computer Science',
                    description:
                        '2019 to 2023 Royal University of Phnom Penh, Phnom Penh, Cambodia',
                    isLastChild: true,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width > 800 ? 20 : 15,
                  ),
                  Text(
                    'Experience',
                    style: TextStyle(
                        color: AppColors.textColor,
                        fontSize: Responsive.fontSizeTitle(context),
                        fontWeight: FontWeight.bold),
                  ),
                  const TimeLineItem(
                    title: 'Web Developer at Hattha Bank',
                    description: 'currently',
                    isLastChild: true,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width > 800 ? 20 : 15,
                  ),
                  Text(
                    'Skills',
                    style: TextStyle(
                        color: AppColors.textColor,
                        fontSize: Responsive.fontSizeTitle(context),
                        fontWeight: FontWeight.bold),
                  ),
                  const TimeLineItem(
                    title: 'Front-end Technologies:',
                    description: 'HTML5, CSS3, JavaScript, Bootstrap',
                    isLastChild: true,
                  ),
                  const TimeLineItem(
                    title: 'Back-end Technologies:',
                    description: 'Spring Boot, C#',
                    isLastChild: true,
                  ),
                  const TimeLineItem(
                    title: 'Database Systems:',
                    description: 'Oracle PLSQL, SQL Server',
                    isLastChild: true,
                  ),
                  const TimeLineItem(
                    title: 'Version Control:',
                    description: 'Git, GitHub',
                    isLastChild: true,
                  ),
                  const TimeLineItem(
                    title: 'Other Tools/Technologies:',
                    description: 'Docker',
                    isLastChild: true,
                  ),
                ],
              ),
            ),
          ),
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

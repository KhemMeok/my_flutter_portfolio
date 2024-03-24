import 'package:flutter/material.dart';

class Responsive {
  static double fontSizeContent(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // You can adjust these values according to your design requirements
    if (screenWidth < 800) {
      // For smaller screens, return a smaller font size
      return 14.0;
    } else if (screenWidth > 800) {
      // For medium-sized screens, return a medium font size
      return 16.0;
    } else {
      // For larger screens, return a larger font size
      return 18.0;
    }
  }

  static double fontSizeTitle(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // You can adjust these values according to your design requirements
    if (screenWidth < 800) {
      // For smaller screens, return a smaller font size
      return 20;
    } else if (screenWidth > 800) {
      // For medium-sized screens, return a medium font size
      return 35;
    } else {
      // For larger screens, return a larger font size
      return 30;
    }
  }
}

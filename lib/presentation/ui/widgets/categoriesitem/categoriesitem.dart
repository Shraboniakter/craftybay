import 'package:flutter/material.dart';

import '../../utility/app_colors.dart';

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 0,
          color: AppColors.primaryColor.withOpacity(0.2),
          child: const Padding(
            padding: EdgeInsets.all(20.0),
            child: Icon(
              Icons.tv,
              size: 32,
              color: AppColors.primaryColor,
            ),
          ),
        ),
        const Text(
          'Electronics',
          style: TextStyle(color: AppColors.primaryColor),
        ),
      ],
    );
  }
}

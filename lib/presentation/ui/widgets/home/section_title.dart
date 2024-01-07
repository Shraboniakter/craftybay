import 'package:flutter/material.dart';

import '../../utility/app_colors.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.title,
    required this.onTapSeeAll,
  });

  final String title;
  final VoidCallback onTapSeeAll;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        TextButton(
            onPressed: onTapSeeAll,
            child: const Text(
              'See All',
              style: TextStyle(color: AppColors.primaryColor),
            ))
      ],
    );
  }
}

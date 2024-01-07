import 'package:craftybay/presentation/ui/utility/assets_paths.dart';
import 'package:flutter/material.dart';

import '../widgets/carouseslider/carousel_image_slider.dart';
import '../widgets/home/circle_icon_bottom.dart';
import '../widgets/home/section_title.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(
                  height: 8,
                ),
                SearchTextFormField,
                const SizedBox(
                  height: 16,
                ),
                const CarouselImageSlider(),
                const SizedBox(
                  height: 16,
                ),
                SectionTitle(
                  title: 'All Categories',
                  onTapSeeAll: () {},
                )
              ],
            ),
          ),
        ));
  }

  TextFormField get SearchTextFormField {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Search',
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.grey,
        ),
        filled: true,
        fillColor: Colors.grey.shade200,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(16),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(16),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }

  AppBar get appBar {
    return AppBar(
      title: Image.asset(AssetsPath.logo_nav),
      actions: [
        CircleIconBottom(
          onTap: () {},
          iconData: Icons.call,
        ),
        SizedBox(
          width: 8,
        ),
        CircleIconBottom(
          onTap: () {},
          iconData: Icons.notifications_on,
        ),
        SizedBox(
          width: 8,
        ),
        CircleIconBottom(
          onTap: () {},
          iconData: Icons.person,
        ),
      ],
    );
  }
}

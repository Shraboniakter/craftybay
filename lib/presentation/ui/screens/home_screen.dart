import 'package:craftybay/presentation/state_holder/main_bottom_nav_controller.dart';
import 'package:craftybay/presentation/ui/utility/assets_paths.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/carouseslider/carousel_image_slider.dart';
import '../widgets/categoriesitem/categoriesitem.dart';
import '../widgets/home/circle_icon_bottom.dart';
import '../widgets/home/section_title.dart';
import '../widgets/product_card/product_card.dart';

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
                  onTapSeeAll: () {
                    Get.find<MainBottomNavController>().changeIndex(1);
                  },
                ),
                CategoriesList,
                SectionTitle(
                  title: 'Popular',
                  onTapSeeAll: () {},
                ),
                ProductList,
                const SizedBox(
                  height: 8,
                ),
                SectionTitle(
                  title: 'Special',
                  onTapSeeAll: () {},
                ),
                SpecialList,
                const SizedBox(
                  height: 8,
                ),
                SectionTitle(
                  title: 'New',
                  onTapSeeAll: () {},
                ),
                NewList,
              ],
            ),
          ),
        ));
  }

  SizedBox get CategoriesList {
    return SizedBox(
      height: 130,
      child: ListView.separated(
        itemCount: 10,
        shrinkWrap: true,
        primary: false,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const CategoriesItem();
        },
        separatorBuilder: (_, __) {
          return const SizedBox(
            width: 8,
          );
        },
      ),
    );
  }

  SizedBox get ProductList {
    return SizedBox(
      height: 190,
      child: ListView.separated(
        itemCount: 10,
        shrinkWrap: true,
        primary: false,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const ProductCard();
        },
        separatorBuilder: (_, __) {
          return const SizedBox(
            width: 8,
          );
        },
      ),
    );
  }

  SizedBox get SpecialList {
    return SizedBox(
      height: 190,
      child: ListView.separated(
        itemCount: 10,
        shrinkWrap: true,
        primary: false,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const ProductCard();
        },
        separatorBuilder: (_, __) {
          return const SizedBox(
            width: 8,
          );
        },
      ),
    );
  }

  SizedBox get NewList {
    return SizedBox(
      height: 190,
      child: ListView.separated(
        itemCount: 10,
        shrinkWrap: true,
        primary: false,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const ProductCard();
        },
        separatorBuilder: (_, __) {
          return const SizedBox(
            width: 8,
          );
        },
      ),
    );
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

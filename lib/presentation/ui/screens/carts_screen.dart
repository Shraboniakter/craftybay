import 'package:craftybay/presentation/state_holder/main_bottom_nav_controller.dart';
import 'package:craftybay/presentation/ui/utility/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/carts/carts_product_item.dart';

class CartsScreen extends StatefulWidget {
  const CartsScreen({super.key});

  @override
  State<CartsScreen> createState() => _CartsScreenState();
}

class _CartsScreenState extends State<CartsScreen> {
  ValueNotifier<int> NumberOfCardItem = ValueNotifier(1);

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (Value) {
        Get.find<MainBottomNavController>().backToHome();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Carts',
          ),
          leading: IconButton(
              onPressed: () {
                Get.find<MainBottomNavController>().backToHome();
              },
              icon: const Icon(Icons.arrow_back_ios)),
        ),
        body: Column(
          children: [
            Expanded(
                child: ListView.separated(
              itemCount: 10,
              itemBuilder: (context, index) {
                return CartsProductItem();
              },
              separatorBuilder: (_, __) => const SizedBox(
                height: 8,
              ),
            )),
            TotalPriceAndCheckOutSection,
          ],
        ),
      ),
    );
  }

  Container get TotalPriceAndCheckOutSection {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          color: AppColors.primaryColor.withOpacity(0.20),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16), topRight: Radius.circular(16))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            children: [
              Text(
                'Total Price',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black45),
              ),
              Text(
                '\$1000000',
                style: TextStyle(
                    fontSize: 24,
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
              child: ElevatedButton(
                  onPressed: () {}, child: const Text('Check Out')))
        ],
      ),
    );
  }
}

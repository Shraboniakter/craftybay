import 'package:flutter/material.dart';
import 'package:item_count_number_button/item_count_number_button.dart';

import '../../utility/app_colors.dart';
import '../../utility/assets_paths.dart';

class CartsProductItem extends StatefulWidget {
  CartsProductItem({super.key});

  @override
  State<CartsProductItem> createState() => _CartsProductItemState();
}

class _CartsProductItemState extends State<CartsProductItem> {
  ValueNotifier<int> NumberOfCardItem = ValueNotifier(1);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Row(
        children: [
          Image.asset(
            AssetsPath.shoe,
            width: 100,
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'New year Special Shoe',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black54),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Row(
                            children: [
                              Text(
                                "Color:black",
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Size:XL',
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.delete_forever,
                          color: Colors.grey,
                        ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '\$100',
                      style: TextStyle(
                          fontSize: 15,
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                    ValueListenableBuilder(
                        valueListenable: NumberOfCardItem,
                        builder: (context, value, _) {
                          return ItemCount(
                            color: AppColors.primaryColor,
                            initialValue: value,
                            minValue: 1,
                            maxValue: 10,
                            decimalPlaces: 0,
                            step: 1,
                            onChanged: (v) {
                              NumberOfCardItem.value = v.toInt();
                            },
                          );
                        }),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

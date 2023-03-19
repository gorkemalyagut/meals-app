import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(25),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200, //200 width
        childAspectRatio: 3 / 2, //300 height in the end
        crossAxisSpacing:
            20, // how much distance is between our columns and rows in that grid
        mainAxisSpacing:
            20, // // how much distance is between our columns and rows in that grid
      ),
      // we have a function that executes on every item in that dummy categories list and that function therefore gets our category data
      children: dummyCategory
          .map(
            (categoryData) => CategoryItem(
              id: categoryData.id,
              title: categoryData.title,
              color: categoryData.color,
            ),
          )
          .toList(),
    );
  }
}

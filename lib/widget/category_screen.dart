import 'package:flutter/material.dart';
import 'package:meal_maker/widget/category_item.dart';
import '../dummy_data.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Meal Maker")),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Scaffold(
          // appBar: AppBar(),
          body: GridView(
            // children: [
            //   ...DUMMY_CATEGORIES.map((catData) {
            //     return InkWell(
            //       onTap: (){},
            //       splashColor: Theme.of(context).primaryColor,
            //       borderRadius: BorderRadius.circular(15),
            //       child: Navigator.of(context).pushNamed(
            //         '/category-item', arguments: {
            //           'id': catData.id,
            //           'title': catData.title,
            //           'color': catData.color,
            //         }
            //       ),

            //     );
            //   }).toList()
            // ],
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
            // children: [
            //   ...DUMMY_CATEGORIES.map((catData) {
            //     return InkWell(
            //       onTap: (){},
            //       splashColor: Theme.of(context).primaryColor,
            //       borderRadius: BorderRadius.circular(15),
            //       child: Navigator.of(context).pushNamed(
            //         '/category-item', arguments: {
            //           'id': catData.id,
            //           'title': catData.title,
            //           'color': catData.color,
            //         }
            //       ),

            //     );
            //   }).toList()
            // ],
            children: DUMMY_CATEGORIES
                .map((e) => CategoryItem(e.id, e.title, e.color))
                .toList(),
          ),
        ),
      ),
    );
  }
}

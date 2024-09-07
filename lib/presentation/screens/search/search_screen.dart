import 'package:auto_route/annotations.dart';
import 'package:best_store/models/enums.dart';
import 'package:best_store/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../providers/products_provider.dart';
import '../../common/widgets/grid_layout_four_elements.dart';

@RoutePage()
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key, required this.category});

  final ProductCategory category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search Screen"),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Consumer(
            builder: (context, ref, child) {
              final AsyncValue<ProductListInfo> productsListInfo = ref.watch(productsByCategoryProvider(category));
              return productsListInfo.when(
                data: (data) {
                  return Column(
                    children: [
                      Text("${data.total} items, ${data.skip} skipped, ${data.limit} limited"),
                      GridLayoutFourElements(products: data.products),
                    ],
                  );
                },
                error: (e, st) {
                  print(e);
                  return Center(child: Text(e.toString()));
                },
                loading: () {
                  return const Center(child: CircularProgressIndicator());
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

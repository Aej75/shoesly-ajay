import 'package:code_test/core/enum/product_sort.dart';
import 'package:code_test/core/export.dart';
import 'package:code_test/core/widgets/app_outline_box.dart';
import 'package:styled_widget/styled_widget.dart';

class ProductSortByFilterView extends StatelessWidget {
  final ProductSort? sortBy;
  final void Function(ProductSort sort) onSelected;
  const ProductSortByFilterView(
      {super.key, required this.onSelected, this.sortBy});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Sory By",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 40,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            clipBehavior: Clip.none,
            scrollDirection: Axis.horizontal,
            children: ProductSort.values.map((e) {
              final selected = sortBy == e;
              return Padding(
                padding: const EdgeInsets.only(right: 12),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      backgroundColor: Colors.white,
                      surfaceTintColor: Colors.white,
                      foregroundColor: Colors.white,
                      elevation: 0),
                  onPressed: () {
                    onSelected(e);
                  },
                  child: AppOutlinedBox(
                      color: selected ? AppColors.blackColor : null,
                      child: Center(
                        child: Text(
                          e.text,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: selected ? Colors.white : null),
                        ).padding(horizontal: 8),
                      )),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    ).padding(vertical: 10);
  }
}

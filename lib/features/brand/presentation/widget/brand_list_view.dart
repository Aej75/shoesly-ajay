import 'package:code_test/core/injection/injection.dart';
import 'package:code_test/core/widgets/error_view.dart';
import 'package:code_test/core/widgets/loading_place_holder.dart';
import 'package:code_test/features/brand/data/model/brand.dart';
import 'package:code_test/features/brand/presentation/bloc/brand_bloc.dart';
import 'package:code_test/features/brand/presentation/widget/single_brand_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BrandListView extends StatefulWidget {
  final void Function(Brand? brand) onSelected;
  final Brand? selectedBrand;
  const BrandListView(
      {super.key, required this.onSelected, required this.selectedBrand});

  @override
  State<BrandListView> createState() => _BrandListViewState();
}

class _BrandListViewState extends State<BrandListView> {
  final BrandBloc brandBloc = getIt<BrandBloc>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => brandBloc..add(const BrandEvent.getBrands()),
      child: SizedBox(
        height: 40,
        child: BlocBuilder<BrandBloc, BrandState>(builder: (context, state) {
          return state.when(
              initial: loadingView,
              loading: loadingView,
              error: errorView,
              loaded: (brands) {
                return ListView.builder(
                  itemCount: brands.length + 1,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return SingleBrandView(
                        brand: Brand(name: "All", logo: "", totalProducts: 0),
                        selected: widget.selectedBrand == null,
                        onPressed: () {
                          setState(() {
                            widget.onSelected(null);
                          });
                        },
                      );
                    }
                    index -= 1;
                    final brand = brands[index];
                    return SingleBrandView(
                      brand: brand,
                      selected: widget.selectedBrand?.id == brand.id,
                      onPressed: () {
                        setState(() {
                          widget.onSelected(brand);
                        });
                      },
                    );
                  },
                );
              });
        }),
      ),
    );
  }
}

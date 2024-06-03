import 'package:code_test/core/export.dart';
import 'package:code_test/core/widgets/app_horizontal_shimmer_items.dart';
import 'package:styled_widget/styled_widget.dart';

class BrandWidgetSlider extends StatefulWidget {
  final void Function(Brand? brand) onSelected;
  Brand? selectedBrand;

  BrandWidgetSlider({super.key, required this.onSelected, this.selectedBrand});

  @override
  State<BrandWidgetSlider> createState() => _BrandWidgetSliderState();
}

class _BrandWidgetSliderState extends State<BrandWidgetSlider> {
  final brandBloc = getIt<BrandBloc>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: BlocProvider(
        create: (context) => brandBloc..add(const BrandEvent.getBrands()),
        child: BlocBuilder<BrandBloc, BrandState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const SizedBox(),
              loaded: (brands) {
                return Row(children: [
                  SelectedBrand(
                    onSelected: widget.onSelected,
                    selected: widget.selectedBrand == null,
                    onPressed: () {
                      setState(() {
                        widget.onSelected(null);
                        widget.selectedBrand = null;
                      });
                    },
                  ),
                  ...brands.map(
                    (e) => SelectedBrand(
                      onSelected: widget.onSelected,
                      brand: e,
                      selected: widget.selectedBrand?.id == e.id,
                      onPressed: () {
                        widget.onSelected(e);
                        widget.selectedBrand = e;
                        setState(() {});
                      },
                    ),
                  ),
                ]).padding(vertical: 10);
              },
              loading: () {
                return const AppHorizontalShimemrItems().padding(vertical: 10);
              },
            );
          },
        ),
      ),
    );
  }
}

class SelectedBrand extends StatefulWidget {
  final Brand? brand;

  final void Function(Brand? brand) onSelected;
  bool selected;
  final VoidCallback onPressed;

  SelectedBrand(
      {super.key,
      required this.onSelected,
      required this.selected,
      this.brand,
      required this.onPressed});

  @override
  State<SelectedBrand> createState() => _SelectedBrandState();
}

class _SelectedBrandState extends State<SelectedBrand> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: colorBlack,
      ),
      onPressed: widget.onPressed,
      child: Text(widget.brand == null ? 'All' : widget.brand?.name ?? '',
          style: TextStyle(
              fontSize: 19,
              color: widget.selected
                  ? AppColors.blackColor
                  : AppColors.productTileColor,
              fontWeight: widget.selected ? FontWeight.w700 : FontWeight.w700)),
    );
  }
}

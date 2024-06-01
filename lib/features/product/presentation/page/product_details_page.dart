import 'package:code_test/core/constants/app_colors.dart';
import 'package:code_test/core/enum/product_color.dart';
import 'package:code_test/core/utils/miscellaneous/spacing_utils.dart';
import 'package:code_test/core/widgets/app_card.dart';
import 'package:code_test/core/widgets/app_netork_image.dart';
import 'package:code_test/core/widgets/base_view.dart';
import 'package:code_test/core/widgets/colum_with_padding.dart';
import 'package:code_test/core/widgets/dot_indicator.dart';
import 'package:code_test/features/cart/data/model/add_to_cart_request_model.dart';
import 'package:code_test/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:code_test/features/cart/presentation/widget/add_to_cart_bottom_sheet_view.dart';
import 'package:code_test/features/cart/presentation/widget/add_to_cart_success_bottom_sheet_view.dart';
import 'package:code_test/features/dashboard/presentation/widgets/cart_icon_button.dart';
import 'package:code_test/features/product/data/model/product.dart';
import 'package:code_test/features/product/presentation/page/app_outlined_button.dart';
import 'package:code_test/features/product/presentation/widget/product_color_picker.dart';
import 'package:code_test/features/product/presentation/widget/product_size_selector.dart';
import 'package:code_test/features/review/presentation/widget/product_reviews.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:master_ui_collection/core/widgets/rating_bar/master_rating_bar.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../../cart/presentation/widget/price_total_and_action_button_view.dart';

class ProductDetailsPage extends StatefulWidget {
  final Product product;
  const ProductDetailsPage({super.key, required this.product});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  num? selectedSize;
  ProductColor? selectedColor;
  int quantity = 1;
  int imageIndex = 0;

  @override
  void initState() {
    selectedColor = ProductColor.white;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final product = widget.product;
    return BlocListener<CartBloc, CartState>(
      listener: (context, state) {
        state.whenOrNull(
            addToCartSuccess: () {
              EasyLoading.dismiss();
              showModalBottomSheet(
                  context: context,
                  builder: (context) => const AddToCartSuccessBottomSheet());
            },
            addToCartState: EasyLoading.show,
            failure: EasyLoading.showError);
      },
      child: BaseView(
          titleText: "",
          actions: const [CartIconButton()],
          bottomNavigationBar: PriceTotalAndActionButtonView(
              buttonText: "Add To Cart",
              title: "Total Price",
              subTitle: "\$${product.price * quantity}",
              onButtonPressed: () async {
                if (selectedSize == null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Please select size"),
                    ),
                  );
                  return;
                } else if (selectedColor == null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Please select color"),
                    ),
                  );
                  return;
                }
                final count = await showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (_) => SingleChildScrollView(
                          child: Container(
                            padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).viewInsets.bottom,
                            ),
                            child: AddToCartBottomSheetView(
                              product: product,
                            ),
                          ),
                        ));

                if (count != null) {
                  if (mounted) {
                    context.read<CartBloc>().add(CartEvent.addToCart(
                          AddToCartRequestModel(
                              product: product,
                              quantity: count,
                              productColor: selectedColor,
                              size: selectedSize),
                        ));
                  }
                }
              }),
          body: SingleChildScrollView(
            child: ColumnEachChildPadding(
              padding: const EdgeInsets.only(bottom: 08),
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.sizeOf(context).height / 2.5,
                  child: AppCard(
                    child: Column(
                      children: [
                        Expanded(
                          child: PageView.builder(
                            itemCount: product.images.length,
                            onPageChanged: (index) {
                              setState(() {
                                imageIndex = index;
                              });
                            },
                            itemBuilder: (context, index) => Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, left: 12, right: 12),
                              child: ColorFiltered(
                                colorFilter: ColorFilter.mode(
                                    selectedColor == null
                                        ? Colors.transparent
                                        : selectedColor!.value,
                                    BlendMode.modulate),
                                child: AppCachedNetworkImageView(
                                  url: product.images[imageIndex],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                children: List.generate(
                                  product.images.length,
                                  (index) => Padding(
                                    padding: const EdgeInsets.only(right: 7),
                                    child: DotIndicator(
                                      color: index == imageIndex
                                          ? AppColors.blackColor
                                          : AppColors.productTileColor,
                                    ),
                                  ),
                                ),
                              ).padding(left: 12, top: 5),
                              ProductColorPicker(
                                selectedColor: selectedColor,
                                onColorSelected: (color) {
                                  setState(() {
                                    selectedColor = color;
                                  });
                                },
                                colors: product.colors,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Text(
                  product.name,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Row(
                  children: [
                    MasterRatingBar(
                      rating: product.avgRating.toDouble(),
                      isDisabled: true,
                      filledColor: AppColors.starColor,
                      size: 20,
                    ),
                    Text(
                      " ${product.avgRating}",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(
                      width: 04,
                    ),
                    Text(
                      "(${product.totalReviews} Reviews)",
                      style: Theme.of(context).textTheme.titleSmall,
                    )
                  ],
                ),
                verticalSpacing(space: 12),
                ProductSizeSelector(
                  selectedSize: selectedSize,
                  options: product.sizes,
                  onSizeSelected: (size) {
                    setState(() {
                      selectedSize = size;
                    });
                  },
                ),
                verticalSpacing(space: 12),
                Text("Description",
                    style: Theme.of(context).textTheme.titleLarge),
                Text(product.description,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: AppColors.lightText,
                        fontSize: 15,
                        fontWeight: FontWeight.normal)),
                verticalSpacing(space: 15),
                ProductTopReviewView(
                  productId: product.id!,
                  totalReview: product.totalReviews,
                ),
                verticalSpacing(space: 5),
                SizedBox(
                  width: double.infinity,
                  child: AppOutlinedButton(
                      title: "SEE ALL REVIEWS",
                      onPressed: () {
                        // context.router
                        //     .push(ProductReviewListingRoute(product: product));
                      }),
                )
              ],
            ),
          )),
    );
  }
}

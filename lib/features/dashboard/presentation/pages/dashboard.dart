import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:code_test/core/export.dart';
import 'package:code_test/core/utils/miscellaneous/spacing_utils.dart';
import 'package:code_test/core/utils/notification/notification_service.dart';
import 'package:code_test/core/widgets/base_view.dart';
import 'package:code_test/features/dashboard/presentation/widgets/brand_widget_slider.dart';
import 'package:code_test/features/dashboard/presentation/widgets/cart_icon_button.dart';
import 'package:code_test/features/dashboard/presentation/widgets/filter_button.dart';
import 'package:code_test/features/dashboard/presentation/widgets/product_items.dart';
import 'package:code_test/features/product/data/model/product.dart';
import 'package:code_test/features/product/data/model/product_filter.dart';
import 'package:code_test/features/product/presentation/bloc/product_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:styled_widget/styled_widget.dart';

class DashboardPage extends StatefulWidget {
  List<Product> fetchedProducts = [];
  List<Product> currentList = [];

  DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final userCollection = FirebaseFirestore.instance.collection('users');
  ProductFilter filter = ProductFilter(limit: ProductFilter.perPag);
  final productBloc = getIt<ProductBloc>();

  Brand? selectedBrand;

  loadProducts() {
    productBloc.add(ProductEvent.getProducts(filter: filter));
  }

  Future<void> initilizeNotification() async {
    await PushNotificationService(context: context).setupInteractedMessage();
  }

  @override
  void initState() {
    initilizeNotification();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseView(
      fabLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 18.0),
        child: FilterButton(
          appliedFilter: filter,
          onFilterChanged: (filter) {
            this.filter = filter;
            setState(() {});
            loadProducts();
          },
        ),
      ),
      body: BlocProvider(
        create: (context) => productBloc
          ..add(ProductEvent.getProducts(filter: ProductFilter(limit: 10))),
        child: BlocConsumer<ProductBloc, ProductState>(
          listener: (context, state) {
            state.whenOrNull(loaded: (products, loadingMore) {
              setState(() {
                widget.fetchedProducts = List.from(products);
                widget.currentList = List.from(products);
              });
            });
          },
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () {
                return Text(
                  'Something went wrong!',
                  style: Theme.of(context).textTheme.titleMedium,
                );
              },
              loading: () {
                return ProductItems.shimmer(context);
              },
              error: (message) {
                EasyLoading.showError(message);
                return const SizedBox();
              },
              loaded: (products, loadingMore) {
                EasyLoading.dismiss();
                return Column(
                  children: [
                    verticalSpacing(space: 20),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Discover',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w700),
                        ),
                        CartIconButton(),
                      ],
                    ),
                    BrandWidgetSlider(
                      selectedBrand: selectedBrand,
                      onSelected: (brand) {
                        selectedBrand = brand;

                        if (brand == null) {
                          setState(() {
                            widget.currentList =
                                List.from(widget.fetchedProducts);
                          });
                        } else {
                          widget.currentList = List.from(widget.fetchedProducts)
                            ..removeWhere(
                                (element) => element.brand != brand.name);
                          setState(() {});
                        }
                      },
                    ),
                    widget.currentList.isEmpty
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'No any products found!',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ],
                          ).height(MediaQuery.sizeOf(context).height / 1.5)
                        : ProductItems(
                            isShimmer: true,
                            currentList: widget.currentList,
                            onScrollEnd: () {
                              filter.limit += ProductFilter.perPag;
                              loadProducts();
                            },
                          )
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}

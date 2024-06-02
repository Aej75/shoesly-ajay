import 'package:auto_route/auto_route.dart';
import 'package:code_test/features/cart/presentation/page/cart_page.dart';
import 'package:code_test/features/dashboard/presentation/pages/dashboard.dart';
import 'package:code_test/features/order/presentation/page/order_summary_page.dart';
import 'package:code_test/features/product/presentation/page/product_details_page.dart';
import 'package:code_test/features/product/presentation/page/product_filter_page.dart';
import 'package:code_test/features/review/presentation/page/product_review_listing_page.dart';

@AdaptiveAutoRouter(
  preferRelativeImports: true,
  routes: [
    AdaptiveRoute(
      page: DashboardPage,
      initial: true,
    ),
    AdaptiveRoute(
      page: ProductFilterPage,
    ),
    AdaptiveRoute(
      page: ProductDetailsPage,
    ),
    AdaptiveRoute(
      page: CartPage,
    ),
    AdaptiveRoute(
      page: ProductReviewListingPage,
    ),
    AdaptiveRoute(
      page: OrderSummaryPage,
    ),
  ],
)
class $AppRouter {}

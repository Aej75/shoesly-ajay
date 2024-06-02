// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../../features/cart/data/model/cart_item.dart' as _i11;
import '../../features/cart/presentation/page/cart_page.dart' as _i4;
import '../../features/dashboard/presentation/pages/dashboard.dart' as _i1;
import '../../features/order/presentation/page/order_summary_page.dart' as _i6;
import '../../features/product/data/model/product.dart' as _i10;
import '../../features/product/data/model/product_filter.dart' as _i9;
import '../../features/product/presentation/page/product_details_page.dart'
    as _i3;
import '../../features/product/presentation/page/product_filter_page.dart'
    as _i2;
import '../../features/review/presentation/page/product_review_listing_page.dart'
    as _i5;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    DashboardPageRoute.name: (routeData) {
      final args = routeData.argsAs<DashboardPageRouteArgs>(
          orElse: () => const DashboardPageRouteArgs());
      return _i7.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i1.DashboardPage(key: args.key),
        opaque: true,
      );
    },
    ProductFilterPageRoute.name: (routeData) {
      final args = routeData.argsAs<ProductFilterPageRouteArgs>();
      return _i7.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i2.ProductFilterPage(
          key: args.key,
          filter: args.filter,
        ),
        opaque: true,
      );
    },
    ProductDetailsPageRoute.name: (routeData) {
      final args = routeData.argsAs<ProductDetailsPageRouteArgs>();
      return _i7.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i3.ProductDetailsPage(
          key: args.key,
          product: args.product,
        ),
        opaque: true,
      );
    },
    CartPageRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i4.CartPage(),
        opaque: true,
      );
    },
    ProductReviewListingPageRoute.name: (routeData) {
      final args = routeData.argsAs<ProductReviewListingPageRouteArgs>();
      return _i7.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i5.ProductReviewListingPage(
          key: args.key,
          product: args.product,
        ),
        opaque: true,
      );
    },
    OrderSummaryPageRoute.name: (routeData) {
      final args = routeData.argsAs<OrderSummaryPageRouteArgs>();
      return _i7.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i6.OrderSummaryPage(
          key: args.key,
          carts: args.carts,
        ),
        opaque: true,
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          DashboardPageRoute.name,
          path: '/',
        ),
        _i7.RouteConfig(
          ProductFilterPageRoute.name,
          path: '/product-filter-page',
        ),
        _i7.RouteConfig(
          ProductDetailsPageRoute.name,
          path: '/product-details-page',
        ),
        _i7.RouteConfig(
          CartPageRoute.name,
          path: '/cart-page',
        ),
        _i7.RouteConfig(
          ProductReviewListingPageRoute.name,
          path: '/product-review-listing-page',
        ),
        _i7.RouteConfig(
          OrderSummaryPageRoute.name,
          path: '/order-summary-page',
        ),
      ];
}

/// generated route for
/// [_i1.DashboardPage]
class DashboardPageRoute extends _i7.PageRouteInfo<DashboardPageRouteArgs> {
  DashboardPageRoute({_i8.Key? key})
      : super(
          DashboardPageRoute.name,
          path: '/',
          args: DashboardPageRouteArgs(key: key),
        );

  static const String name = 'DashboardPageRoute';
}

class DashboardPageRouteArgs {
  const DashboardPageRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'DashboardPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.ProductFilterPage]
class ProductFilterPageRoute
    extends _i7.PageRouteInfo<ProductFilterPageRouteArgs> {
  ProductFilterPageRoute({
    _i8.Key? key,
    required _i9.ProductFilter? filter,
  }) : super(
          ProductFilterPageRoute.name,
          path: '/product-filter-page',
          args: ProductFilterPageRouteArgs(
            key: key,
            filter: filter,
          ),
        );

  static const String name = 'ProductFilterPageRoute';
}

class ProductFilterPageRouteArgs {
  const ProductFilterPageRouteArgs({
    this.key,
    required this.filter,
  });

  final _i8.Key? key;

  final _i9.ProductFilter? filter;

  @override
  String toString() {
    return 'ProductFilterPageRouteArgs{key: $key, filter: $filter}';
  }
}

/// generated route for
/// [_i3.ProductDetailsPage]
class ProductDetailsPageRoute
    extends _i7.PageRouteInfo<ProductDetailsPageRouteArgs> {
  ProductDetailsPageRoute({
    _i8.Key? key,
    required _i10.Product product,
  }) : super(
          ProductDetailsPageRoute.name,
          path: '/product-details-page',
          args: ProductDetailsPageRouteArgs(
            key: key,
            product: product,
          ),
        );

  static const String name = 'ProductDetailsPageRoute';
}

class ProductDetailsPageRouteArgs {
  const ProductDetailsPageRouteArgs({
    this.key,
    required this.product,
  });

  final _i8.Key? key;

  final _i10.Product product;

  @override
  String toString() {
    return 'ProductDetailsPageRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i4.CartPage]
class CartPageRoute extends _i7.PageRouteInfo<void> {
  const CartPageRoute()
      : super(
          CartPageRoute.name,
          path: '/cart-page',
        );

  static const String name = 'CartPageRoute';
}

/// generated route for
/// [_i5.ProductReviewListingPage]
class ProductReviewListingPageRoute
    extends _i7.PageRouteInfo<ProductReviewListingPageRouteArgs> {
  ProductReviewListingPageRoute({
    _i8.Key? key,
    required _i10.Product product,
  }) : super(
          ProductReviewListingPageRoute.name,
          path: '/product-review-listing-page',
          args: ProductReviewListingPageRouteArgs(
            key: key,
            product: product,
          ),
        );

  static const String name = 'ProductReviewListingPageRoute';
}

class ProductReviewListingPageRouteArgs {
  const ProductReviewListingPageRouteArgs({
    this.key,
    required this.product,
  });

  final _i8.Key? key;

  final _i10.Product product;

  @override
  String toString() {
    return 'ProductReviewListingPageRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i6.OrderSummaryPage]
class OrderSummaryPageRoute
    extends _i7.PageRouteInfo<OrderSummaryPageRouteArgs> {
  OrderSummaryPageRoute({
    _i8.Key? key,
    required List<_i11.CartItem> carts,
  }) : super(
          OrderSummaryPageRoute.name,
          path: '/order-summary-page',
          args: OrderSummaryPageRouteArgs(
            key: key,
            carts: carts,
          ),
        );

  static const String name = 'OrderSummaryPageRoute';
}

class OrderSummaryPageRouteArgs {
  const OrderSummaryPageRouteArgs({
    this.key,
    required this.carts,
  });

  final _i8.Key? key;

  final List<_i11.CartItem> carts;

  @override
  String toString() {
    return 'OrderSummaryPageRouteArgs{key: $key, carts: $carts}';
  }
}

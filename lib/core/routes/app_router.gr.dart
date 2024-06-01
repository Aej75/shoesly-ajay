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
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../../features/cart/presentation/page/cart_page.dart' as _i4;
import '../../features/dashboard/presentation/pages/dashboard.dart' as _i1;
import '../../features/product/data/model/product.dart' as _i8;
import '../../features/product/data/model/product_filter.dart' as _i7;
import '../../features/product/presentation/page/product_details_page.dart'
    as _i3;
import '../../features/product/presentation/page/product_filter_page.dart'
    as _i2;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    DashboardPageRoute.name: (routeData) {
      final args = routeData.argsAs<DashboardPageRouteArgs>(
          orElse: () => const DashboardPageRouteArgs());
      return _i5.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i1.DashboardPage(key: args.key),
        opaque: true,
      );
    },
    ProductFilterPageRoute.name: (routeData) {
      final args = routeData.argsAs<ProductFilterPageRouteArgs>();
      return _i5.AdaptivePage<dynamic>(
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
      return _i5.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i3.ProductDetailsPage(
          key: args.key,
          product: args.product,
        ),
        opaque: true,
      );
    },
    CartPageRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i4.CartPage(),
        opaque: true,
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          DashboardPageRoute.name,
          path: '/',
        ),
        _i5.RouteConfig(
          ProductFilterPageRoute.name,
          path: '/product-filter-page',
        ),
        _i5.RouteConfig(
          ProductDetailsPageRoute.name,
          path: '/product-details-page',
        ),
        _i5.RouteConfig(
          CartPageRoute.name,
          path: '/cart-page',
        ),
      ];
}

/// generated route for
/// [_i1.DashboardPage]
class DashboardPageRoute extends _i5.PageRouteInfo<DashboardPageRouteArgs> {
  DashboardPageRoute({_i6.Key? key})
      : super(
          DashboardPageRoute.name,
          path: '/',
          args: DashboardPageRouteArgs(key: key),
        );

  static const String name = 'DashboardPageRoute';
}

class DashboardPageRouteArgs {
  const DashboardPageRouteArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'DashboardPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.ProductFilterPage]
class ProductFilterPageRoute
    extends _i5.PageRouteInfo<ProductFilterPageRouteArgs> {
  ProductFilterPageRoute({
    _i6.Key? key,
    required _i7.ProductFilter? filter,
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

  final _i6.Key? key;

  final _i7.ProductFilter? filter;

  @override
  String toString() {
    return 'ProductFilterPageRouteArgs{key: $key, filter: $filter}';
  }
}

/// generated route for
/// [_i3.ProductDetailsPage]
class ProductDetailsPageRoute
    extends _i5.PageRouteInfo<ProductDetailsPageRouteArgs> {
  ProductDetailsPageRoute({
    _i6.Key? key,
    required _i8.Product product,
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

  final _i6.Key? key;

  final _i8.Product product;

  @override
  String toString() {
    return 'ProductDetailsPageRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i4.CartPage]
class CartPageRoute extends _i5.PageRouteInfo<void> {
  const CartPageRoute()
      : super(
          CartPageRoute.name,
          path: '/cart-page',
        );

  static const String name = 'CartPageRoute';
}

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i15;

import '../pages/all_products/all_products_page.dart' as _i10;
import '../pages/cart/cart_page.dart' as _i7;
import '../pages/cart/checkout_page.dart' as _i8;
import '../pages/catalogue/catalogue_page.dart' as _i11;
import '../pages/catalogue/catalogue_products_page.dart' as _i12;
import '../pages/catalogue/filter_page.dart' as _i6;
import '../pages/favourites/favourite_page.dart' as _i13;
import '../pages/home/home_page.dart' as _i5;
import '../pages/Intro/intro_screen.dart' as _i1;
import '../pages/phone_number_verification/otp_screen.dart' as _i3;
import '../pages/phone_number_verification/phone_number_input_screen.dart'
    as _i2;
import '../pages/product/product_page.dart' as _i4;
import '../pages/profile/profile_page.dart' as _i14;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i15.GlobalKey<_i15.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    IntroScreen.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.IntroScreen());
    },
    PhoneNumberInputScreen.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.PhoneNumberInputScreen());
    },
    OtpScreen.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.OtpScreen());
    },
    ProductRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.ProductPage());
    },
    HomeRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.HomePage());
    },
    FilterRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.FilterPage());
    },
    CartRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.CartPage());
    },
    CheckoutRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.CheckoutPage());
    },
    AllProductsRouter.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.EmptyRouterPage());
    },
    CatalogueRouter.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.EmptyRouterPage());
    },
    FavouriteRouter.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.EmptyRouterPage());
    },
    ProfileRouter.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.EmptyRouterPage());
    },
    AllProductsRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.AllProductsPage());
    },
    CatalogueRoute.name: (routeData) {
      final args = routeData.argsAs<CatalogueRouteArgs>(
          orElse: () => const CatalogueRouteArgs());
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: _i11.CataloguePage(key: args.key));
    },
    CatalogueProductsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<CatalogueProductsRouteArgs>(
          orElse: () =>
              CatalogueProductsRouteArgs(title: pathParams.getString('title')));
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i12.CatalogueProductsPage(key: args.key, title: args.title));
    },
    FavouriteRoute.name: (routeData) {
      final args = routeData.argsAs<FavouriteRouteArgs>(
          orElse: () => const FavouriteRouteArgs());
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: _i13.FavouritePage(key: args.key));
    },
    ProfileRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.ProfilePage());
    }
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(IntroScreen.name, path: '/'),
        _i9.RouteConfig(PhoneNumberInputScreen.name, path: 'phoneNumberInput'),
        _i9.RouteConfig(OtpScreen.name, path: 'otp'),
        _i9.RouteConfig(ProductRoute.name, path: 'mainProduct'),
        _i9.RouteConfig(HomeRoute.name, path: 'home', children: [
          _i9.RouteConfig(AllProductsRouter.name,
              path: 'allProducts',
              parent: HomeRoute.name,
              children: [
                _i9.RouteConfig(AllProductsRoute.name,
                    path: '', parent: AllProductsRouter.name)
              ]),
          _i9.RouteConfig(CatalogueRouter.name,
              path: 'catalogue',
              parent: HomeRoute.name,
              children: [
                _i9.RouteConfig(CatalogueRoute.name,
                    path: '', parent: CatalogueRouter.name),
                _i9.RouteConfig(CatalogueProductsRoute.name,
                    path: ':title', parent: CatalogueRouter.name)
              ]),
          _i9.RouteConfig(FavouriteRouter.name,
              path: 'favourite',
              parent: HomeRoute.name,
              children: [
                _i9.RouteConfig(FavouriteRoute.name,
                    path: '', parent: FavouriteRouter.name)
              ]),
          _i9.RouteConfig(ProfileRouter.name,
              path: 'profile',
              parent: HomeRoute.name,
              children: [
                _i9.RouteConfig(ProfileRoute.name,
                    path: '', parent: ProfileRouter.name)
              ])
        ]),
        _i9.RouteConfig(FilterRoute.name, path: 'filter'),
        _i9.RouteConfig(CartRoute.name, path: 'cart'),
        _i9.RouteConfig(CheckoutRoute.name, path: 'checkout')
      ];
}

/// generated route for [_i1.IntroScreen]
class IntroScreen extends _i9.PageRouteInfo<void> {
  const IntroScreen() : super(name, path: '/');

  static const String name = 'IntroScreen';
}

/// generated route for [_i2.PhoneNumberInputScreen]
class PhoneNumberInputScreen extends _i9.PageRouteInfo<void> {
  const PhoneNumberInputScreen() : super(name, path: 'phoneNumberInput');

  static const String name = 'PhoneNumberInputScreen';
}

/// generated route for [_i3.OtpScreen]
class OtpScreen extends _i9.PageRouteInfo<void> {
  const OtpScreen() : super(name, path: 'otp');

  static const String name = 'OtpScreen';
}

/// generated route for [_i4.ProductPage]
class ProductRoute extends _i9.PageRouteInfo<void> {
  const ProductRoute() : super(name, path: 'mainProduct');

  static const String name = 'ProductRoute';
}

/// generated route for [_i5.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute({List<_i9.PageRouteInfo>? children})
      : super(name, path: 'home', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for [_i6.FilterPage]
class FilterRoute extends _i9.PageRouteInfo<void> {
  const FilterRoute() : super(name, path: 'filter');

  static const String name = 'FilterRoute';
}

/// generated route for [_i7.CartPage]
class CartRoute extends _i9.PageRouteInfo<void> {
  const CartRoute() : super(name, path: 'cart');

  static const String name = 'CartRoute';
}

/// generated route for [_i8.CheckoutPage]
class CheckoutRoute extends _i9.PageRouteInfo<void> {
  const CheckoutRoute() : super(name, path: 'checkout');

  static const String name = 'CheckoutRoute';
}

/// generated route for [_i9.EmptyRouterPage]
class AllProductsRouter extends _i9.PageRouteInfo<void> {
  const AllProductsRouter({List<_i9.PageRouteInfo>? children})
      : super(name, path: 'allProducts', initialChildren: children);

  static const String name = 'AllProductsRouter';
}

/// generated route for [_i9.EmptyRouterPage]
class CatalogueRouter extends _i9.PageRouteInfo<void> {
  const CatalogueRouter({List<_i9.PageRouteInfo>? children})
      : super(name, path: 'catalogue', initialChildren: children);

  static const String name = 'CatalogueRouter';
}

/// generated route for [_i9.EmptyRouterPage]
class FavouriteRouter extends _i9.PageRouteInfo<void> {
  const FavouriteRouter({List<_i9.PageRouteInfo>? children})
      : super(name, path: 'favourite', initialChildren: children);

  static const String name = 'FavouriteRouter';
}

/// generated route for [_i9.EmptyRouterPage]
class ProfileRouter extends _i9.PageRouteInfo<void> {
  const ProfileRouter({List<_i9.PageRouteInfo>? children})
      : super(name, path: 'profile', initialChildren: children);

  static const String name = 'ProfileRouter';
}

/// generated route for [_i10.AllProductsPage]
class AllProductsRoute extends _i9.PageRouteInfo<void> {
  const AllProductsRoute() : super(name, path: '');

  static const String name = 'AllProductsRoute';
}

/// generated route for [_i11.CataloguePage]
class CatalogueRoute extends _i9.PageRouteInfo<CatalogueRouteArgs> {
  CatalogueRoute({_i15.Key? key})
      : super(name, path: '', args: CatalogueRouteArgs(key: key));

  static const String name = 'CatalogueRoute';
}

class CatalogueRouteArgs {
  const CatalogueRouteArgs({this.key});

  final _i15.Key? key;

  @override
  String toString() {
    return 'CatalogueRouteArgs{key: $key}';
  }
}

/// generated route for [_i12.CatalogueProductsPage]
class CatalogueProductsRoute
    extends _i9.PageRouteInfo<CatalogueProductsRouteArgs> {
  CatalogueProductsRoute({_i15.Key? key, required String title})
      : super(name,
            path: ':title',
            args: CatalogueProductsRouteArgs(key: key, title: title),
            rawPathParams: {'title': title});

  static const String name = 'CatalogueProductsRoute';
}

class CatalogueProductsRouteArgs {
  const CatalogueProductsRouteArgs({this.key, required this.title});

  final _i15.Key? key;

  final String title;

  @override
  String toString() {
    return 'CatalogueProductsRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for [_i13.FavouritePage]
class FavouriteRoute extends _i9.PageRouteInfo<FavouriteRouteArgs> {
  FavouriteRoute({_i15.Key? key})
      : super(name, path: '', args: FavouriteRouteArgs(key: key));

  static const String name = 'FavouriteRoute';
}

class FavouriteRouteArgs {
  const FavouriteRouteArgs({this.key});

  final _i15.Key? key;

  @override
  String toString() {
    return 'FavouriteRouteArgs{key: $key}';
  }
}

/// generated route for [_i14.ProfilePage]
class ProfileRoute extends _i9.PageRouteInfo<void> {
  const ProfileRoute() : super(name, path: '');

  static const String name = 'ProfileRoute';
}

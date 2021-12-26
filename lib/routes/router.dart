import 'package:auto_route/auto_route.dart';
import 'package:myshop_ui/pages/Intro/intro_screen.dart';
import 'package:myshop_ui/pages/all_products/all_products_page.dart';
import 'package:myshop_ui/pages/cart/cart_page.dart';
import 'package:myshop_ui/pages/cart/checkout_page.dart';
import 'package:myshop_ui/pages/catalogue/catalogue_page.dart';
import 'package:myshop_ui/pages/catalogue/catalogue_products_page.dart';
import 'package:myshop_ui/pages/catalogue/filter_page.dart';
import 'package:myshop_ui/pages/favourites/favourite_page.dart';
import 'package:myshop_ui/pages/home/home_page.dart';
import 'package:myshop_ui/pages/phone_number_verification/otp_screen.dart';
import 'package:myshop_ui/pages/phone_number_verification/phone_number_input_screen.dart';
import 'package:myshop_ui/pages/product/product_page.dart';
import 'package:myshop_ui/pages/profile/profile_page.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: <AutoRoute>[
  AutoRoute(path: '/', page: IntroScreen, initial: true),
  AutoRoute(path: 'phoneNumberInput', page: PhoneNumberInputScreen),
  AutoRoute(path: 'otp', page: OtpScreen),
  AutoRoute(path: 'mainProduct', page: ProductPage),
  AutoRoute(path: 'home', page: HomePage, children: [
    AutoRoute(
        path: 'allProducts',
        name: 'AllProductsRouter',
        page: EmptyRouterPage,
        children: [
          AutoRoute(path: '', page: AllProductsPage),
        ]),
    AutoRoute(
        path: 'catalogue',
        name: 'CatalogueRouter',
        page: EmptyRouterPage,
        children: [
          AutoRoute(path: '', page: CataloguePage),
          AutoRoute(path: ':title', page: CatalogueProductsPage),
        ]),
    AutoRoute(
        path: 'favourite',
        name: 'FavouriteRouter',
        page: EmptyRouterPage,
        children: [
          AutoRoute(path: '', page: FavouritePage),
        ]),
    AutoRoute(
        path: 'profile',
        name: 'ProfileRouter',
        page: EmptyRouterPage,
        children: [
          AutoRoute(path: '', page: ProfilePage),
        ]),
  ]),
  AutoRoute(path: 'filter', page: FilterPage),
  AutoRoute(path: 'cart', page: CartPage),
  AutoRoute(path: 'checkout', page: CheckoutPage),
])
class $AppRouter {}

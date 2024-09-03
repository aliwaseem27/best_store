// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ActiveOrdersRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ActiveOrdersTab(),
      );
    },
    AddCardRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AddCardScreen(),
      );
    },
    CancelledOrdersRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CancelledOrdersTab(),
      );
    },
    CartRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CartScreen(),
      );
    },
    ChatRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ChatScreen(),
      );
    },
    CheckoutRoute.name: (routeData) {
      final args = routeData.argsAs<CheckoutRouteArgs>(
          orElse: () => const CheckoutRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CheckoutScreen(key: args.key),
      );
    },
    CompletedOrdersRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CompletedOrdersTab(),
      );
    },
    ForgetPasswordRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ForgetPasswordScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: HomeScreen(key: args.key),
      );
    },
    MyOrdersRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MyOrdersScreen(),
      );
    },
    NavigationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NavigationScreen(),
      );
    },
    NotificationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NotificationScreen(),
      );
    },
    OTPRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OTPScreen(),
      );
    },
    OnBoardingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnBoardingScreen(),
      );
    },
    PaymentOptionsRoute.name: (routeData) {
      final args = routeData.argsAs<PaymentOptionsRouteArgs>(
          orElse: () => const PaymentOptionsRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PaymentOptionsScreen(key: args.key),
      );
    },
    PrivateChatRoute.name: (routeData) {
      final args = routeData.argsAs<PrivateChatRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PrivateChatScreen(
          key: args.key,
          personName: args.personName,
        ),
      );
    },
    ProductDetailsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProductDetailsScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileScreen(),
      );
    },
    ResetPasswordRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ResetPasswordScreen(),
      );
    },
    SearchRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SearchScreen(),
      );
    },
    SettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsScreen(),
      );
    },
    ShippingAddressRoute.name: (routeData) {
      final args = routeData.argsAs<ShippingAddressRouteArgs>(
          orElse: () => const ShippingAddressRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ShippingAddressScreen(key: args.key),
      );
    },
    ShippingTypeRoute.name: (routeData) {
      final args = routeData.argsAs<ShippingTypeRouteArgs>(
          orElse: () => const ShippingTypeRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ShippingTypeScreen(key: args.key),
      );
    },
    SignInRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SignInScreen(),
      );
    },
    SignUpRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SignUpScreen(),
      );
    },
    WishlistRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const WishlistScreen(),
      );
    },
  };
}

/// generated route for
/// [ActiveOrdersTab]
class ActiveOrdersRoute extends PageRouteInfo<void> {
  const ActiveOrdersRoute({List<PageRouteInfo>? children})
      : super(
          ActiveOrdersRoute.name,
          initialChildren: children,
        );

  static const String name = 'ActiveOrdersRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AddCardScreen]
class AddCardRoute extends PageRouteInfo<void> {
  const AddCardRoute({List<PageRouteInfo>? children})
      : super(
          AddCardRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddCardRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CancelledOrdersTab]
class CancelledOrdersRoute extends PageRouteInfo<void> {
  const CancelledOrdersRoute({List<PageRouteInfo>? children})
      : super(
          CancelledOrdersRoute.name,
          initialChildren: children,
        );

  static const String name = 'CancelledOrdersRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CartScreen]
class CartRoute extends PageRouteInfo<void> {
  const CartRoute({List<PageRouteInfo>? children})
      : super(
          CartRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ChatScreen]
class ChatRoute extends PageRouteInfo<void> {
  const ChatRoute({List<PageRouteInfo>? children})
      : super(
          ChatRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CheckoutScreen]
class CheckoutRoute extends PageRouteInfo<CheckoutRouteArgs> {
  CheckoutRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          CheckoutRoute.name,
          args: CheckoutRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'CheckoutRoute';

  static const PageInfo<CheckoutRouteArgs> page =
      PageInfo<CheckoutRouteArgs>(name);
}

class CheckoutRouteArgs {
  const CheckoutRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'CheckoutRouteArgs{key: $key}';
  }
}

/// generated route for
/// [CompletedOrdersTab]
class CompletedOrdersRoute extends PageRouteInfo<void> {
  const CompletedOrdersRoute({List<PageRouteInfo>? children})
      : super(
          CompletedOrdersRoute.name,
          initialChildren: children,
        );

  static const String name = 'CompletedOrdersRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ForgetPasswordScreen]
class ForgetPasswordRoute extends PageRouteInfo<void> {
  const ForgetPasswordRoute({List<PageRouteInfo>? children})
      : super(
          ForgetPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgetPasswordRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<HomeRouteArgs> page = PageInfo<HomeRouteArgs>(name);
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [MyOrdersScreen]
class MyOrdersRoute extends PageRouteInfo<void> {
  const MyOrdersRoute({List<PageRouteInfo>? children})
      : super(
          MyOrdersRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyOrdersRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NavigationScreen]
class NavigationRoute extends PageRouteInfo<void> {
  const NavigationRoute({List<PageRouteInfo>? children})
      : super(
          NavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NavigationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NotificationScreen]
class NotificationRoute extends PageRouteInfo<void> {
  const NotificationRoute({List<PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OTPScreen]
class OTPRoute extends PageRouteInfo<void> {
  const OTPRoute({List<PageRouteInfo>? children})
      : super(
          OTPRoute.name,
          initialChildren: children,
        );

  static const String name = 'OTPRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OnBoardingScreen]
class OnBoardingRoute extends PageRouteInfo<void> {
  const OnBoardingRoute({List<PageRouteInfo>? children})
      : super(
          OnBoardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PaymentOptionsScreen]
class PaymentOptionsRoute extends PageRouteInfo<PaymentOptionsRouteArgs> {
  PaymentOptionsRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          PaymentOptionsRoute.name,
          args: PaymentOptionsRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'PaymentOptionsRoute';

  static const PageInfo<PaymentOptionsRouteArgs> page =
      PageInfo<PaymentOptionsRouteArgs>(name);
}

class PaymentOptionsRouteArgs {
  const PaymentOptionsRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'PaymentOptionsRouteArgs{key: $key}';
  }
}

/// generated route for
/// [PrivateChatScreen]
class PrivateChatRoute extends PageRouteInfo<PrivateChatRouteArgs> {
  PrivateChatRoute({
    Key? key,
    required String personName,
    List<PageRouteInfo>? children,
  }) : super(
          PrivateChatRoute.name,
          args: PrivateChatRouteArgs(
            key: key,
            personName: personName,
          ),
          initialChildren: children,
        );

  static const String name = 'PrivateChatRoute';

  static const PageInfo<PrivateChatRouteArgs> page =
      PageInfo<PrivateChatRouteArgs>(name);
}

class PrivateChatRouteArgs {
  const PrivateChatRouteArgs({
    this.key,
    required this.personName,
  });

  final Key? key;

  final String personName;

  @override
  String toString() {
    return 'PrivateChatRouteArgs{key: $key, personName: $personName}';
  }
}

/// generated route for
/// [ProductDetailsScreen]
class ProductDetailsRoute extends PageRouteInfo<void> {
  const ProductDetailsRoute({List<PageRouteInfo>? children})
      : super(
          ProductDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductDetailsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ResetPasswordScreen]
class ResetPasswordRoute extends PageRouteInfo<void> {
  const ResetPasswordRoute({List<PageRouteInfo>? children})
      : super(
          ResetPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResetPasswordRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SearchScreen]
class SearchRoute extends PageRouteInfo<void> {
  const SearchRoute({List<PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingsScreen]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ShippingAddressScreen]
class ShippingAddressRoute extends PageRouteInfo<ShippingAddressRouteArgs> {
  ShippingAddressRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ShippingAddressRoute.name,
          args: ShippingAddressRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ShippingAddressRoute';

  static const PageInfo<ShippingAddressRouteArgs> page =
      PageInfo<ShippingAddressRouteArgs>(name);
}

class ShippingAddressRouteArgs {
  const ShippingAddressRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'ShippingAddressRouteArgs{key: $key}';
  }
}

/// generated route for
/// [ShippingTypeScreen]
class ShippingTypeRoute extends PageRouteInfo<ShippingTypeRouteArgs> {
  ShippingTypeRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ShippingTypeRoute.name,
          args: ShippingTypeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ShippingTypeRoute';

  static const PageInfo<ShippingTypeRouteArgs> page =
      PageInfo<ShippingTypeRouteArgs>(name);
}

class ShippingTypeRouteArgs {
  const ShippingTypeRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'ShippingTypeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [SignInScreen]
class SignInRoute extends PageRouteInfo<void> {
  const SignInRoute({List<PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SignUpScreen]
class SignUpRoute extends PageRouteInfo<void> {
  const SignUpRoute({List<PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [WishlistScreen]
class WishlistRoute extends PageRouteInfo<void> {
  const WishlistRoute({List<PageRouteInfo>? children})
      : super(
          WishlistRoute.name,
          initialChildren: children,
        );

  static const String name = 'WishlistRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

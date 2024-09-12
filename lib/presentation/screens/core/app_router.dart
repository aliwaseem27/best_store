import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../models/enums.dart';
import '../../../models/product_model.dart';
import '../authentication/forget_password/forget_password_screen.dart';
import '../authentication/otp/otp_screen.dart';
import '../authentication/reset_password/reset_password_screen.dart';
import '../authentication/sign_in/sign_in_screen.dart';
import '../authentication/sign_up/sign_up_screen.dart';
import '../cart/add_card_screen.dart';
import '../cart/cart_screen.dart';
import '../cart/checkout_screen.dart';
import '../cart/e_receipt_screen.dart';
import '../cart/payment_options_screen.dart';
import '../cart/shipping_address.dart';
import '../cart/shipping_type_screen.dart';
import '../chat/chat_screen.dart';
import '../chat/private_chat_screen.dart';
import '../on_boarding/on_boarding_screen.dart';
import '../profile/my_orders_screen.dart';
import '../profile/my_orders_tabs/active_orders_tab.dart';
import '../profile/my_orders_tabs/cancelled_orders_tab.dart';
import '../profile/my_orders_tabs/completed_orders_tab.dart';
import '../profile/profile_screen.dart';
import '../profile/settings_screen.dart';
import '../profile/track_order_screen.dart';
import '../search/search_screen.dart';
import '../store/home_screen.dart';
import '../store/notification_screen.dart';
import '../store/product_details_screen.dart';
import '../store/review_screen.dart';
import '../wishlist/wishlist_screen.dart';
import 'navigation_screen.dart';

part "app_router.gr.dart";

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        // Authentication
        AutoRoute(page: SignInRoute.page),
        AutoRoute(page: SignUpRoute.page),
        AutoRoute(page: ForgetPasswordRoute.page),
        AutoRoute(page: ResetPasswordRoute.page),
        AutoRoute(page: OTPRoute.page),

        // Cart
        AutoRoute(page: CheckoutRoute.page, initial: true),
        AutoRoute(page: ShippingAddressRoute.page),
        AutoRoute(page: PaymentOptionsRoute.page),
        AutoRoute(page: AddCardRoute.page),
        AutoRoute(page: ShippingTypeRoute.page),
        AutoRoute(page: EReceiptRoute.page),

        // Chat
        AutoRoute(page: PrivateChatRoute.page),

        // Profile
        AutoRoute(page: SettingsRoute.page),
        AutoRoute(page: TrackOrderRoute.page),
        AutoRoute(
          page: MyOrdersRoute.page,
          children: [
            AutoRoute(page: ActiveOrdersRoute.page),
            AutoRoute(page: CancelledOrdersRoute.page),
            AutoRoute(page: CompletedOrdersRoute.page),
          ],
        ),

        // Store
        AutoRoute(page: NotificationRoute.page),
        AutoRoute(page: ProductDetailsRoute.page),
        AutoRoute(page: ReviewRoute.page),

        // Search
        AutoRoute(page: SearchRoute.page),

        // Core
        AutoRoute(page: OnBoardingRoute.page),
        AutoRoute(
          page: NavigationRoute.page,
          // initial: true,
          children: [
            AutoRoute(page: HomeRoute.page),
            AutoRoute(page: CartRoute.page),
            AutoRoute(page: WishlistRoute.page),
            AutoRoute(page: ChatRoute.page),
            AutoRoute(page: ProfileRoute.page),
          ],
        ),
      ];
}

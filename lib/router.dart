import 'package:go_router/go_router.dart';
import 'package:pharmabros/pages/home_view.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) => const HomePageView(),
      // routes:  [
      //   GoRoute(
      //     path: '/product/:productId',
      //     name: 'product',
      //     builder: (context, state) => ProductPage(productId: state.params['productId']!),
      //   ),
      // ]
    ),
    // GoRoute(
    //   path: '/profile',
    //   name: 'profile',
    //   builder: (context, state) => const ProfilePageView(),
    // ),

  ],
);

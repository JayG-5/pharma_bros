import 'package:go_router/go_router.dart';
import 'package:pharmabros/pages/home.dart';
import 'package:pharmabros/pages/product_detail.dart';
import 'package:pharmabros/pages/webview.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) => const HomePage(),
      routes:  [
        GoRoute(
          path: 'product/:productId',
          name: 'product',
          builder: (context, state) => ProductDetailPage(productId: int.parse(state.pathParameters['productId']!)),
        ),
        GoRoute(
          path: 'terms',
          name: 'terms',
          builder: (context, state) => const WebViewPage(url: 'https://www.pharma-bros.com/terms', title: '이용약관'),
        ),
        GoRoute(
          path: 'privacy',
          name: 'privacy',
          builder: (context, state) => const WebViewPage(url: 'https://www.pharma-bros.com/privacy', title: '개인정보처리방침'),
        ),
      ]
    ),
  ],
);

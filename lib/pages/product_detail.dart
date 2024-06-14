import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pharmabros/providers/product_detail.dart';
import 'package:pharmabros/styles/style.dart';
import 'package:pharmabros/utils/gap.dart';
import 'package:pharmabros/widgets/product_detail/section/header.dart';
import 'package:pharmabros/widgets/product_detail/section/intake_method.dart';
import 'package:pharmabros/widgets/product_detail/section/nutrition_information.dart';
import 'package:pharmabros/widgets/product_detail/section/per_daily_intake_ingredient.dart';
import 'package:pharmabros/widgets/product_detail/section/product_features.dart';

class ProductDetailPage extends ConsumerWidget {
  const ProductDetailPage({super.key, required this.productId});

  final int productId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productState = ref.watch(productDetailNotifierProvider(productId));
    print(productState);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '제품 정보',
          style: AppStyle.typography.heading3,
        ),
        centerTitle: true,
      ),
      backgroundColor: AppStyle.color.primaryBackground,
      body: productState.when(
        data: (data) => SingleChildScrollView(
          child: Column(
            children: [
              ProductDetailPageHeaderSection(data: data),
              Gap.height(8),
              ProductDetailIntakeMethodSection(data: data),
              Gap.height(8),
              ProductDetailPagePerDailyIntakeIngredientSection(data: data),
              Gap.height(8),
              ProductDetailPageNutritionInformationSection(data: data),
              Gap.height(8),
              ProductDetailPageFeaturesSection(data: data),
              Gap.height(MediaQuery.of(context).padding.bottom)

            ],
          ),
        ),
        error: (error, stackTrace) {
          print(error);
          print(stackTrace);
          return Center(
            child: Text('error : $error\n$stackTrace'),
          );
        },
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}

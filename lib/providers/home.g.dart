// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bottomNavigationNotifierHash() =>
    r'712aa57afd34df0f65f96559e5045e67c9a755f3';

/// See also [BottomNavigationNotifier].
@ProviderFor(BottomNavigationNotifier)
final bottomNavigationNotifierProvider =
    AutoDisposeNotifierProvider<BottomNavigationNotifier, int>.internal(
  BottomNavigationNotifier.new,
  name: r'bottomNavigationNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$bottomNavigationNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$BottomNavigationNotifier = AutoDisposeNotifier<int>;
String _$searchBarNotifierHash() => r'197377e7c5f5839eda17afde69fa645c98354198';

/// See also [SearchBarNotifier].
@ProviderFor(SearchBarNotifier)
final searchBarNotifierProvider =
    AutoDisposeNotifierProvider<SearchBarNotifier, String>.internal(
  SearchBarNotifier.new,
  name: r'searchBarNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$searchBarNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SearchBarNotifier = AutoDisposeNotifier<String>;
String _$searchNotifierHash() => r'cc73ffc3dcb706c6d8893e0b2b7b903472519206';

/// See also [SearchNotifier].
@ProviderFor(SearchNotifier)
final searchNotifierProvider =
    AutoDisposeAsyncNotifierProvider<SearchNotifier, SearchInfo>.internal(
  SearchNotifier.new,
  name: r'searchNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$searchNotifierHash,
  dependencies: <ProviderOrFamily>[searchBarNotifierProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    searchBarNotifierProvider,
    ...?searchBarNotifierProvider.allTransitiveDependencies
  },
);

typedef _$SearchNotifier = AutoDisposeAsyncNotifier<SearchInfo>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

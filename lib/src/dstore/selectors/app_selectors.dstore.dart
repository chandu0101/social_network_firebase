// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'app_selectors.dart';

// **************************************************************************
// SelectorsGenerator
// **************************************************************************

// Selector
class AppSelectors {
  static final authPS = Selector<AppState, AuthPS>(
      fn: $_AppSelectors.authPS, deps: {"authPS": []});
  static final nav =
      Selector<AppState, Nav>(fn: $_AppSelectors.nav, deps: {"nav": []});
  static final postFeed = Selector<AppState, StreamField<Post, dynamic>>(
      fn: $_AppSelectors.postFeed,
      deps: {
        "feedPS": ["posts"]
      });
}
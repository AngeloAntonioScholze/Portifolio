import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flutter/foundation.dart';
import 'package:solitaire/solitaire_game.dart';

@immutable
class FaceNumber {
  final int value;
  final String label;
  final Sprite redSprite;
  final Sprite blackSprite;

  factory FaceNumber.of(int value) {
    assert(value >= 1 && value <= 13);
    return _singletons[value - 1];
  }

  FaceNumber._(
    this.value,
    this.label,
    double x1,
    double y1,
    double x2,
    double y2,
    double w,
    double h,
  )   : redSprite = getSprite(x1, y1, w, h),
        blackSprite = getSprite(x2, y2, w, h);

  static late final List<FaceNumber> _singletons = [
    FaceNumber._(1, 'A', 335, 164, 789, 161, 120, 129),
    FaceNumber._(2, '2', 20, 19, 15, 322, 83, 125),
    FaceNumber._(3, '3', 122, 19, 117, 322, 80, 127),
    FaceNumber._(4, '4', 213, 12, 208, 315, 93, 132),
    FaceNumber._(5, '5', 314, 21, 309, 324, 85, 125),
    FaceNumber._(6, '6', 419, 17, 414, 320, 84, 129),
    FaceNumber._(7, '7', 509, 21, 505, 324, 92, 128),
    FaceNumber._(8, '8', 612, 19, 607, 322, 78, 127),
    FaceNumber._(9, '9', 709, 19, 704, 322, 84, 130),
    FaceNumber._(10, '10', 810, 20, 805, 322, 137, 127),
    FaceNumber._(11, 'J', 15, 170, 469, 167, 56, 126),
    FaceNumber._(12, 'Q', 92, 168, 547, 165, 132, 128),
    FaceNumber._(13, 'K', 243, 170, 696, 167, 92, 123),
  ];
}

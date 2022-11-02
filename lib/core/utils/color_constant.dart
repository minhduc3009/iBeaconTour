import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black9004c = fromHex('#4c000000');

  static Color bluegray51 = fromHex('#e5ebec');

  static Color bluegray50 = fromHex('#e5ebed');

  static Color gray400 = fromHex('#bfbfbf');

  static Color gray5007f = fromHex('#7f9f8f85');

  static Color whiteA7001e = fromHex('#1effffff');

  static Color gray800 = fromHex('#414141');

  static Color whiteA7003d = fromHex('#3dffffff');

  static Color black90090 = fromHex('#90000000');

  static Color black90091 = fromHex('#900b0b0b');

  static Color gray80099 = fromHex('#99414141');

  static Color whiteA70070 = fromHex('#70ffffff');

  static Color gray100 = fromHex('#f3f8f9');

  static Color whiteA70000 = fromHex('#00ffffff');

  static Color black900 = fromHex('#000000');

  static Color gray80090 = fromHex('#90414141');

  static Color bluegray400 = fromHex('#888888');

  static Color gray10000 = fromHex('#00f3f8f9');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

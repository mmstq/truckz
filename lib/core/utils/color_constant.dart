import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray90014 = fromHex('#1410151b');

  static Color amberA400A2 = fromHex('#a2ffcd00');

  static Color blueA700 = fromHex('#225eff');

  static Color gray90099 = fromHex('#9911004d');

  static Color whiteA7005f = fromHex('#5fffffff');

  static Color indigo90090 = fromHex('#901d0d56');

  static Color gray9006c = fromHex('#6c11004d');

  static Color amberA400 = fromHex('#ffcd00');

  static Color gray90019 = fromHex('#1911004d');

  static Color gray9000f1 = fromHex('#0f10151b');

  static Color gray9000c = fromHex('#0c11004d');

  static Color black900 = fromHex('#000000');

  static Color gray900A2 = fromHex('#a211004d');

  static Color gray9000a = fromHex('#0a10151b');

  static Color indigo90019 = fromHex('#191d0d56');

  static Color amberA4007e = fromHex('#7effcd00');

  static Color gray90063 = fromHex('#6311004d');

  static Color deepPurpleA200 = fromHex('#744be5');

  static Color gray9000f = fromHex('#0f11004d');

  static Color black9000a = fromHex('#0a000000');

  static Color gray90020 = fromHex('#1910151b');

  static Color gray90087 = fromHex('#8711004d');

  static Color gray900 = fromHex('#11004d');

  static Color tealA400 = fromHex('#00d8be');

  static Color whiteA70087 = fromHex('#87ffffff');

  static Color gray9007e = fromHex('#7e11004d');

  static Color bluegray400 = fromHex('#888888');

  static Color gray9005e = fromHex('#5e11004d');

  static Color whiteA70067 = fromHex('#67ffffff');

  static Color gray9005f = fromHex('#5f11004d');

  static Color gray40063 = fromHex('#63c4c4c1');

  static Color indigo900 = fromHex('#1d0d56');

  static Color indigo90005 = fromHex('#051d0d56');

  static Color blueA7004c = fromHex('#4c225eff');

  static Color whiteA700 = fromHex('#ffffff');

  static Color gray90090 = fromHex('#9011004d');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

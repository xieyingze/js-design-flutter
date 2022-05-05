import 'package:flutter/material.dart';

import '../../js_design_kit.dart';

abstract class JSColors {
  /*
   * @description:    十六进制颜色
   * @param:          hex 十六进制值，例如：0xffffff,
   * @param:          alpha, 透明度 [0.0,1.0]
   * @return:
   * @author:         jay xie
   * @time:           11/14/21 12:42 AM
   */
  static Color hexColor(int hex, {double alpha = 1}) {
    if (alpha < 0) {
      alpha = 0;
    } else if (alpha > 1) {
      alpha = 1;
    }
    return Color.fromRGBO((hex & 0xFF0000) >> 16, (hex & 0x00FF00) >> 8, (hex & 0x0000FF) >> 0, alpha);
  }

  /*
   * @description   hex字符串转color
   * @param
   * @return
   * @author        jay
   * @time          3/2/22 2:49 PM
   */
  static Color hexToColor(String hexString, {String alphaChannel = 'FF'}) {
    return Color(int.parse(hexString.replaceFirst('#', '0x$alphaChannel')));
  }

  /// 主题颜色
  Color main({double alpha = 1});

  /// 主绿色颜色
  Color green({double alpha = 1});

  /// 主蓝色颜色
  Color blue({double alpha = 1});

  /// 主红色颜色
  Color red({double alpha = 1});

  /// 主黄色
  Color yellow({double alpha = 1});

  /// 主绿色背景颜色
  Color mainGreenBackground({double alpha = 1});

  /// 主红色背景颜色
  Color mainRedBackground({double alpha = 1});

  /// 下划线颜色
  Color line({bool isLight = false, double alpha = 1});

  /// 背景色
  Color background({double alpha = 1});

  /// 背景色
  Color darkBackground({double alpha = 1});

  /// 阴影色
  Color shadow({double alpha = 1});

  /// 阴影色
  Color darkShadow({double alpha = 1});

  /// 卡片颜色
  Color card({double alpha = 1});

  /// 1级字体颜色
  Color fontMain({double alpha = 1});

  /// 2级字体颜色
  Color fontMedium({double alpha = 1});

  /// 3级字体颜色
  Color fontNormal({double alpha = 1});

  /// 4级字体颜色
  Color fontTips({double alpha = 1});

  /// placeholder字体颜色
  Color placeholder({double alpha = 1});

  /// 白色
  Color white({double alpha = 1});

  /// 黑色
  Color black({double alpha = 1});

  /// 透明色
  Color clear();
}

class DefaultColor extends JSColors {
  DefaultColor();

  ////////////////////////////// 主色调等 ///////////////////////////////
  @override
  Color main({double alpha = 1}) {
    switch (JSThemeManager.instance.theme) {
      case JSThemeType.light:
        return JSColors.hexColor(0x0F8CFF, alpha: alpha);
      case JSThemeType.dark:
        return JSColors.hexColor(0x0F8CFF, alpha: alpha);
      default:
        return JSColors.hexColor(0x0F8CFF, alpha: alpha);
    }
  }

  @override
  Color blue({double alpha = 1}) {
    switch (JSThemeManager.instance.theme) {
      case JSThemeType.light:
        return JSColors.hexColor(0x2f86f6, alpha: alpha);
      case JSThemeType.dark:
        return JSColors.hexColor(0x2f86f6, alpha: alpha);
      default:
        return JSColors.hexColor(0x2f86f6, alpha: alpha);
    }
  }

  @override
  Color green({double alpha = 1}) {
    switch (JSThemeManager.instance.theme) {
      case JSThemeType.light:
        return JSColors.hexColor(0x00B01B, alpha: alpha);
      case JSThemeType.dark:
        return JSColors.hexColor(0x10da81, alpha: alpha);
      default:
        return JSColors.hexColor(0x11b17c, alpha: alpha);
    }
  }

  @override
  Color red({double alpha = 1}) {
    switch (JSThemeManager.instance.theme) {
      case JSThemeType.light:
        return JSColors.hexColor(0xFB4747, alpha: alpha);
      case JSThemeType.dark:
        return JSColors.hexColor(0xe5353e, alpha: alpha);
      default:
        return JSColors.hexColor(0xe5353e, alpha: alpha);
    }
  }

  @override
  Color yellow({double alpha = 1}) {
    switch (JSThemeManager.instance.theme) {
      case JSThemeType.light:
        return JSColors.hexColor(0xf8aa37, alpha: alpha);
      case JSThemeType.dark:
        return JSColors.hexColor(0xf7b500, alpha: alpha);
      default:
        return JSColors.hexColor(0xf7b500, alpha: alpha);
    }
  }

  ////////////////////////////// 背景色等 ///////////////////////////////
  @override
  Color background({double alpha = 1}) {
    switch (JSThemeManager.instance.theme) {
      case JSThemeType.light:
        return JSColors.hexColor(0xf7f7f7, alpha: alpha);
      case JSThemeType.dark:
        return JSColors.hexColor(0x131721, alpha: alpha);
      default:
        return JSColors.hexColor(0xf5f5f5, alpha: alpha);
    }
  }

  @override
  Color card({double alpha = 1}) {
    switch (JSThemeManager.instance.theme) {
      case JSThemeType.light:
        return JSColors.hexColor(0xffffff, alpha: alpha);
      case JSThemeType.dark:
        return JSColors.hexColor(0x1B1E26, alpha: alpha);
      default:
        return JSColors.hexColor(0xffffff, alpha: alpha);
    }
  }

  @override
  Color darkBackground({double alpha = 1}) {
    switch (JSThemeManager.instance.theme) {
      case JSThemeType.light:
        return JSColors.hexColor(0x000000, alpha: alpha).withAlpha(50);
      case JSThemeType.dark:
        return JSColors.hexColor(0x000000, alpha: alpha).withAlpha(800);
      default:
        return JSColors.hexColor(0x000000, alpha: alpha).withAlpha(100);
    }
  }

  @override
  Color mainGreenBackground({double alpha = 1}) {
    switch (JSThemeManager.instance.theme) {
      case JSThemeType.light:
        return JSColors.hexColor(0x00B01B, alpha: alpha).withAlpha(20);
      case JSThemeType.dark:
        return JSColors.hexColor(0x11b17c, alpha: alpha).withAlpha(310);
      default:
        return JSColors.hexColor(0x11b17c, alpha: alpha).withAlpha(310);
    }
  }

  @override
  Color mainRedBackground({double alpha = 1}) {
    switch (JSThemeManager.instance.theme) {
      case JSThemeType.light:
        return JSColors.hexColor(0xFB4747, alpha: alpha).withAlpha(20);
      case JSThemeType.dark:
        return JSColors.hexColor(0xd40000, alpha: alpha).withAlpha(310);
      default:
        return JSColors.hexColor(0xd40000, alpha: alpha).withAlpha(310);
    }
  }

  ////////////////////////////// 字体颜色等 ///////////////////////////////
  @override
  Color fontMain({double alpha = 1}) {
    switch (JSThemeManager.instance.theme) {
      case JSThemeType.light:
        return JSColors.hexColor(0x3B3B3B, alpha: alpha);
      case JSThemeType.dark:
        return JSColors.hexColor(0xefefef, alpha: alpha);
      default:
        return JSColors.hexColor(0x3B3B3B, alpha: alpha);
    }
  }

  @override
  Color fontMedium({double alpha = 1}) {
    switch (JSThemeManager.instance.theme) {
      case JSThemeType.light:
        return JSColors.hexColor(0x3B3B3B, alpha: alpha);
      case JSThemeType.dark:
        return JSColors.hexColor(0xefefef, alpha: alpha);
      default:
        return JSColors.hexColor(0x3B3B3B, alpha: alpha);
    }
  }

  @override
  Color fontNormal({double alpha = 1}) {
    switch (JSThemeManager.instance.theme) {
      case JSThemeType.light:
        return JSColors.hexColor(0x3B3B3B, alpha: alpha);
      case JSThemeType.dark:
        return JSColors.hexColor(0xefefef, alpha: alpha);
      default:
        return JSColors.hexColor(0x3B3B3B, alpha: alpha);
    }
  }

  @override
  Color fontTips({double alpha = 1}) {
    switch (JSThemeManager.instance.theme) {
      case JSThemeType.light:
        return JSColors.hexColor(0x3B3B3B, alpha: alpha);
      case JSThemeType.dark:
        return JSColors.hexColor(0xefefef, alpha: alpha);
      default:
        return JSColors.hexColor(0x3B3B3B, alpha: alpha);
    }
  }

  ////////////////////////////// 下划线等 ///////////////////////////////
  @override
  Color line({bool isLight = false, double alpha = 1}) {
    switch (JSThemeManager.instance.theme) {
      case JSThemeType.light:
        return isLight ? JSColors.hexColor(0xf5f5f5, alpha: alpha) : JSColors.hexColor(0xcccccc, alpha: alpha);
      case JSThemeType.dark:
        return isLight ? JSColors.hexColor(0x2B2F3B, alpha: alpha) : JSColors.hexColor(0x2B2F3B, alpha: alpha);
      default:
        return isLight ? JSColors.hexColor(0xf5f5f5, alpha: alpha) : JSColors.hexColor(0xcccccc, alpha: alpha);
    }
  }

  @override
  Color placeholder({double alpha = 1}) {
    switch (JSThemeManager.instance.theme) {
      case JSThemeType.light:
        return JSColors.hexColor(0xC2C2C2, alpha: alpha);
      case JSThemeType.dark:
        return JSColors.hexColor(0xC2C2C2, alpha: alpha);
      default:
        return JSColors.hexColor(0xC2C2C2, alpha: alpha);
    }
  }

  ////////////////////////////// 阴影等 ///////////////////////////////
  @override
  Color shadow({double alpha = 1}) {
    switch (JSThemeManager.instance.theme) {
      case JSThemeType.light:
        return JSColors.hexColor(0x000000, alpha: alpha).withAlpha(20);
      case JSThemeType.dark:
        return JSColors.hexColor(0x000000, alpha: alpha).withAlpha(800);
      default:
        return JSColors.hexColor(0xeaeaea, alpha: alpha).withAlpha(150);
    }
  }

  @override
  Color darkShadow({double alpha = 1}) {
    switch (JSThemeManager.instance.theme) {
      case JSThemeType.light:
        return JSColors.hexColor(0x000000, alpha: alpha).withAlpha(50);
      case JSThemeType.dark:
        return JSColors.hexColor(0x000000, alpha: alpha).withAlpha(800);
      default:
        return JSColors.hexColor(0x000000, alpha: alpha).withAlpha(100);
    }
  }

  ////////////////////////////// 基础颜色等 ///////////////////////////////
  @override
  Color black({double alpha = 1}) {
    return JSColors.hexColor(0x000000, alpha: alpha);
  }

  @override
  Color clear() {
    return JSColors.hexColor(0xffffff, alpha: 0);
  }

  @override
  Color white({double alpha = 1}) {
    return JSColors.hexColor(0xffffff, alpha: alpha);
  }
}

// class JSColors2 {
//   /*
//    * @description:    十六进制颜色
//    * @param:          hex 十六进制值，例如：0xffffff,
//    * @param:          alpha, 透明度 [0.0,1.0]
//    * @return:
//    * @author:         jay xie
//    * @time:           11/14/21 12:42 AM
//    */
//   static Color hexColor(int hex, {double alpha = 1}) {
//     if (alpha < 0) {
//       alpha = 0;
//     } else if (alpha > 1) {
//       alpha = 1;
//     }
//     return Color.fromRGBO((hex & 0xFF0000) >> 16, (hex & 0x00FF00) >> 8, (hex & 0x0000FF) >> 0, alpha);
//   }
//
//   /*
//    * @description   hex字符串转color
//    * @param
//    * @return
//    * @author        jay
//    * @time          3/2/22 2:49 PM
//    */
//   static Color hexToColor(String hexString, {String alphaChannel = 'FF'}) {
//     return Color(int.parse(hexString.replaceFirst('#', '0x$alphaChannel')));
//   }
//
//   /// 主题颜色
//   static Color main({double alpha = 1}) {
//     switch (JSThemeManager.instance.theme) {
//       case JSThemeType.light:
//         return hexColor(0x3FA9F5, alpha: alpha);
//       case JSThemeType.dark:
//         return hexColor(0xee0a24, alpha: alpha);
//       default:
//         return hexColor(0xee0a24, alpha: alpha);
//     }
//   }
//
//   /// 主绿色颜色
//   static Color mainGreen({double alpha = 1}) {
//     switch (JSThemeManager.instance.theme) {
//       case JSThemeType.light:
//         return hexColor(0x00B01B, alpha: alpha);
//       case JSThemeType.dark:
//         return hexColor(0x10da81, alpha: alpha);
//       default:
//         return hexColor(0x11b17c, alpha: alpha);
//     }
//   }
//
//   /// 主蓝色颜色
//   static Color mainBlu({double alpha = 1}) {
//     switch (JSThemeManager.instance.theme) {
//       case JSThemeType.light:
//         return hexColor(0x2f86f6, alpha: alpha);
//       case JSThemeType.dark:
//         return hexColor(0x2f86f6, alpha: alpha);
//       default:
//         return hexColor(0x2f86f6, alpha: alpha);
//     }
//   }
//
//   /// 主红色颜色
//   static Color mainRed({double alpha = 1}) {
//     switch (JSThemeManager.instance.theme) {
//       case JSThemeType.light:
//         return hexColor(0xFB4747, alpha: alpha);
//       case JSThemeType.dark:
//         return hexColor(0xe5353e, alpha: alpha);
//       default:
//         return hexColor(0xe5353e, alpha: alpha);
//     }
//   }
//
//   /// 主黄色
//   static Color mainYellow({double alpha = 1}) {
//     switch (JSThemeManager.instance.theme) {
//       case JSThemeType.light:
//         return hexColor(0xf8aa37, alpha: alpha);
//       case JSThemeType.dark:
//         return hexColor(0xf7b500, alpha: alpha);
//       default:
//         return hexColor(0xf7b500, alpha: alpha);
//     }
//   }
//
//   /// 主绿色背景颜色
//   static Color mainGreenBackground({double alpha = 1}) {
//     switch (JSThemeManager.instance.theme) {
//       case JSThemeType.light:
//         return hexColor(0x00B01B, alpha: alpha).withAlpha(20);
//       case JSThemeType.dark:
//         return hexColor(0x11b17c, alpha: alpha).withAlpha(310);
//       default:
//         return hexColor(0x11b17c, alpha: alpha).withAlpha(310);
//     }
//   }
//
//   /// 主红色背景颜色
//   static Color mainRedBackground({double alpha = 1}) {
//     switch (JSThemeManager.instance.theme) {
//       case JSThemeType.light:
//         return hexColor(0xFB4747, alpha: alpha).withAlpha(20);
//       case JSThemeType.dark:
//         return hexColor(0xd40000, alpha: alpha).withAlpha(310);
//       default:
//         return hexColor(0xd40000, alpha: alpha).withAlpha(310);
//     }
//   }
//
//   /// 下划线颜色
//   static Color line({bool isLight = false, double alpha = 1}) {
//     switch (JSThemeManager.instance.theme) {
//       case JSThemeType.light:
//         return isLight ? hexColor(0xf5f5f5, alpha: alpha) : hexColor(0xcccccc, alpha: alpha);
//       case JSThemeType.dark:
//         return isLight ? hexColor(0x2B2F3B, alpha: alpha) : hexColor(0x2B2F3B, alpha: alpha);
//       default:
//         return isLight ? hexColor(0xf5f5f5, alpha: alpha) : hexColor(0xcccccc, alpha: alpha);
//     }
//   }
//
//   /// 背景色
//   static Color background({double alpha = 1}) {
//     switch (JSThemeManager.instance.theme) {
//       case JSThemeType.light:
//         return hexColor(0xf7f7f7, alpha: alpha);
//       case JSThemeType.dark:
//         return hexColor(0x131721, alpha: alpha);
//       default:
//         return hexColor(0xf5f5f5, alpha: alpha);
//     }
//   }
//
//   /// 背景色
//   static Color darkBackground({double alpha = 1}) {
//     switch (JSThemeManager.instance.theme) {
//       case JSThemeType.light:
//         return hexColor(0xf7f7f7, alpha: alpha);
//       case JSThemeType.dark:
//         return hexColor(0x131721, alpha: alpha);
//       default:
//         return hexColor(0xf7f7f7, alpha: alpha);
//     }
//   }
//
//   /// 阴影色
//   static Color shadow({double alpha = 1}) {
//     switch (JSThemeManager.instance.theme) {
//       case JSThemeType.light:
//         return hexColor(0x000000, alpha: alpha).withAlpha(20);
//       case JSThemeType.dark:
//         return hexColor(0x000000, alpha: alpha).withAlpha(800);
//       default:
//         return hexColor(0xeaeaea, alpha: alpha).withAlpha(150);
//     }
//   }
//
//   /// 阴影色
//   static Color darkShadow({double alpha = 1}) {
//     switch (JSThemeManager.instance.theme) {
//       case JSThemeType.light:
//         return hexColor(0x000000, alpha: alpha).withAlpha(50);
//       case JSThemeType.dark:
//         return hexColor(0x000000, alpha: alpha).withAlpha(800);
//       default:
//         return hexColor(0x000000, alpha: alpha).withAlpha(100);
//     }
//   }
//
//   /// 卡片颜色
//   static Color card({double alpha = 1}) {
//     switch (JSThemeManager.instance.theme) {
//       case JSThemeType.light:
//         return hexColor(0xffffff, alpha: alpha);
//       case JSThemeType.dark:
//         return hexColor(0x1B1E26, alpha: alpha);
//       default:
//         return hexColor(0xffffff, alpha: alpha);
//     }
//   }
//
//   /// 1级字体颜色
//   static Color fontMain({double alpha = 1}) {
//     switch (JSThemeManager.instance.theme) {
//       case JSThemeType.light:
//         return hexColor(0x3B3B3B, alpha: alpha);
//       case JSThemeType.dark:
//         return hexColor(0xefefef, alpha: alpha);
//       default:
//         return hexColor(0x3B3B3B, alpha: alpha);
//     }
//   }
//
//   /// 2级字体颜色
//   static Color fontMedium({double alpha = 1}) {
//     switch (JSThemeManager.instance.theme) {
//       case JSThemeType.light:
//         return hexColor(0x666666, alpha: alpha);
//       case JSThemeType.dark:
//         return hexColor(0xaaaaaa, alpha: alpha);
//       default:
//         return hexColor(0xffffff, alpha: alpha);
//     }
//   }
//
//   /// 3级字体颜色
//   static Color fontNormal({double alpha = 1}) {
//     switch (JSThemeManager.instance.theme) {
//       case JSThemeType.light:
//         return hexColor(0xababab, alpha: alpha);
//       case JSThemeType.dark:
//         return hexColor(0x777777, alpha: alpha);
//       default:
//         return hexColor(0xAbAbAb, alpha: alpha);
//     }
//   }
//
//   /// 4级字体颜色
//   static Color fontTips({double alpha = 1}) {
//     switch (JSThemeManager.instance.theme) {
//       case JSThemeType.light:
//         return hexColor(0xABABAB, alpha: alpha);
//       case JSThemeType.dark:
//         return hexColor(0x777777, alpha: alpha);
//       default:
//         return hexColor(0xC2C2C2, alpha: alpha);
//     }
//   }
//
//   /// placeholder字体颜色
//   static Color placeholder({double alpha = 1}) {
//     switch (JSThemeManager.instance.theme) {
//       case JSThemeType.light:
//         return hexColor(0xC2C2C2, alpha: alpha);
//       case JSThemeType.dark:
//         return hexColor(0xC2C2C2, alpha: alpha);
//       default:
//         return hexColor(0xC2C2C2, alpha: alpha);
//     }
//   }
//
//   /// 白色
//   static Color white({double alpha = 1}) {
//     return hexColor(0xffffff, alpha: alpha);
//   }
//
//   /// 黑色
//   static Color black({double alpha = 1}) {
//     return hexColor(0x000000, alpha: alpha);
//   }
//
//   /// 透明色
//   static Color clear() {
//     return hexColor(0xffffff, alpha: 0);
//   }
// }

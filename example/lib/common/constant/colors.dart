import 'package:flutter/material.dart';
import 'package:js_design_kit/js_design_kit.dart';

class JDColor extends JSColors {
  JDColor();

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

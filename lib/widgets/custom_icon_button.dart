import 'package:flutter/material.dart';
import 'package:truck_booking/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.height,
      this.width,
      this.child,
      this.onTap});

  IconButtonShape? shape;

  IconButtonPadding? padding;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? height;

  double? width;

  Widget? child;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        constraints: BoxConstraints(
          minHeight: getSize(height ?? 0),
          minWidth: getSize(width ?? 0),
        ),
        padding: EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
    );
  }

  _setPadding() {
    switch (padding) {
      case IconButtonPadding.PaddingAll12:
        return getPadding(
          all: 12,
        );
      default:
        return getPadding(
          all: 15,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.FillAmberA400:
        return ColorConstant.amberA400;
      case IconButtonVariant.FillTealA400:
        return ColorConstant.tealA400;
      case IconButtonVariant.OutlineGray90063:
      case IconButtonVariant.OutlineGray90063_1:
      case IconButtonVariant.OutlineWhiteA70067:
      case IconButtonVariant.OutlineGray9005f:
      case IconButtonVariant.OutlineGray9005e:
        return null;
      default:
        return null;
    }
  }

  _setBorder() {
    switch (variant) {
      case IconButtonVariant.OutlineGray90063_1:
        return Border.all(
          color: ColorConstant.gray90063,
          width: getHorizontalSize(
            2.00,
          ),
        );
      case IconButtonVariant.OutlineWhiteA70067:
        return Border.all(
          color: ColorConstant.whiteA70067,
          width: getHorizontalSize(
            1.50,
          ),
        );
      case IconButtonVariant.OutlineGray9005f:
        return Border.all(
          color: ColorConstant.gray9005f,
          width: getHorizontalSize(
            2.00,
          ),
        );
      case IconButtonVariant.OutlineGray9005e:
        return Border.all(
          color: ColorConstant.gray9005e,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case IconButtonVariant.FillAmberA400:
      case IconButtonVariant.FillTealA400:
        return null;
      default:
        return Border.all(
          color: ColorConstant.gray90063,
          width: getHorizontalSize(
            1.00,
          ),
        );
    }
  }

  _setBorderRadius() {
    switch (shape) {
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        );
    }
  }
}

enum IconButtonShape {
  RoundedBorder12,
}

enum IconButtonPadding {
  PaddingAll15,
  PaddingAll12,
}

enum IconButtonVariant {
  OutlineGray90063,
  FillAmberA400,
  OutlineGray90063_1,
  OutlineWhiteA70067,
  OutlineGray9005f,
  FillTealA400,
  OutlineGray9005e,
}

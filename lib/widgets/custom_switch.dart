import 'package:e_commerce_app/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class CustomSwitch extends StatelessWidget {
  CustomSwitch({this.alignment, this.margin, this.value, this.onChanged});

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  bool? value;

  Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildSwitchWidget(),
          )
        : _buildSwitchWidget();
  }

  _buildSwitchWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: FlutterSwitch(
        value: value ?? false,
        height: getHorizontalSize(23),
        width: getHorizontalSize(44),
        toggleSize: 23,
        borderRadius: getHorizontalSize(
          11.00,
        ),
        activeColor: ColorConstant.tealA700,
        activeToggleColor: ColorConstant.whiteA70001,
        inactiveColor: ColorConstant.tealA700,
        inactiveToggleColor: ColorConstant.whiteA70001,
        onToggle: (value) {
          onChanged!(value);
        },
      ),
    );
  }
}

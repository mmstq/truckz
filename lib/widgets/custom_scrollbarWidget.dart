import 'package:draggable_scrollbar/draggable_scrollbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:truck_booking/presentation/customer_care_page_screen/controller/customer_care_page_controller.dart';

import '../core/app_export.dart';

class CustomScrollbarWidget extends GetWidget<CustomerCarePageController> {
  final BoxScrollView Function(ScrollController controller) builder;

  const CustomScrollbarWidget({Key? key, required this.builder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollbar(
      controller: controller.scrollController,
      heightScrollThumb: 30,
      child: builder(controller.scrollController),
      scrollThumbBuilder: scrollThumbBuilder, backgroundColor: Color(0xFF00D8D5),
    );
  }
  Widget scrollThumbBuilder(
      Color backgroundColor,
      Animation<double> thumbAnimation,
      Animation<double> labelAnimation,
      double height, {
  Text? labelText,
  BoxConstraints? labelConstraints
      }) => Container(
    margin: EdgeInsets.only(right: 22),
    height: height,
    width: 23,
    decoration: BoxDecoration(
    color: backgroundColor,
        borderRadius: BorderRadius.circular(5)),
  );
}

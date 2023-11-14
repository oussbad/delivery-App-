import 'package:boxpend_flutter_android_app/src/app/widgets/gap_widget.dart';
import 'package:boxpend_flutter_android_app/src/presentation/order/controllers/create_order_controller.dart';
import 'package:boxpend_flutter_android_app/src/presentation/order/widgets/order_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateOrderPage extends GetView<CreateOrderController> {
  CreateOrderPage({super.key});

  final _orderFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GapWidget.s16(),
          OrderFormWidget(
            formKey: _orderFormKey,
            onSubmit: (value) => print(value.toString()),
          ),
        ],
      ),
    );
  }
}

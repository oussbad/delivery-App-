import 'package:boxpend_flutter_android_app/src/app/helpers/validators.dart';
import 'package:boxpend_flutter_android_app/src/app/resources/strings_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/button_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/checkbox_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/gap_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';

class Order {
  final String? receiverName;
  final double? price;
  final String? phoneNumber1;
  final String? phoneNumber2;
  final String? address;
  final String? mapsLink;
  final bool allowPayment;
  final String? notes;

  Order({
    this.receiverName,
    this.price,
    this.phoneNumber1,
    this.phoneNumber2,
    this.address,
    this.mapsLink,
    this.allowPayment = true,
    this.notes,
  });

  @override
  String toString() {
    return 'ReceiverName : $receiverName,\n Price: $price, \n PhoneNumber1: $phoneNumber1, \n PhoneNumber2: $phoneNumber2,, \n Address: $address, \n MapsLink: $mapsLink, \n AllowPayment: $allowPayment, \n notes: $notes';
  }
}

class OrderFormWidget extends StatefulWidget {
  const OrderFormWidget({
    super.key,
    required this.formKey,
    required this.onSubmit,
    this.formData,
  });

  final Order? formData;
  final GlobalKey<FormState> formKey;
  final void Function(Order?) onSubmit;

  @override
  State<OrderFormWidget> createState() => _OrderFormWidgetState();
}

class _OrderFormWidgetState extends State<OrderFormWidget> {
  final _receiverNameController = TextEditingController();
  final _priceController = TextEditingController();
  final _phoneNumber1Controller = TextEditingController();
  final _phoneNumber2Controller = TextEditingController();
  final _addressController = TextEditingController();
  final _mapsLinkController = TextEditingController();
  final _notesController = TextEditingController();

  @override
  void dispose() {
    _receiverNameController.dispose();
    _priceController.dispose();
    _phoneNumber1Controller.dispose();
    _phoneNumber2Controller.dispose();
    _addressController.dispose();
    _mapsLinkController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Expanded(
        child: ListView(
          padding: EdgeInsets.all(AppSpacing.s16),
          children: [
            TextFieldWidget(
              initialValue: widget.formData != null ? widget.formData!.receiverName : null,
              controller: _receiverNameController,
              placeholder: StringsManager.receiverName,
              validator: Validator().required().isUsername().run,
            ),
            GapWidget.s16(),
            TextFieldWidget(
              type: TextInputType.number,
              initialValue: widget.formData != null ? widget.formData!.price.toString() : null,
              controller: _priceController,
              placeholder: StringsManager.price,
              validator: Validator().required().isPrice().run,
            ),
            GapWidget.s16(),
            TextFieldWidget(
              initialValue: widget.formData != null ? widget.formData!.phoneNumber1 : null,
              controller: _phoneNumber1Controller,
              placeholder: StringsManager.phoneNumber1,
              validator: Validator().required().isPhoneNumber().run,
            ),
            GapWidget.s16(),
            TextFieldWidget(
              initialValue: widget.formData != null ? widget.formData!.phoneNumber2 : null,
              controller: _phoneNumber2Controller,
              placeholder: StringsManager.phoneNumber2,
              validator: Validator().isOptional().isPhoneNumber().run,
            ),
            GapWidget.s16(),
            TextFieldWidget(
              initialValue: widget.formData != null ? widget.formData!.address : null,
              controller: _addressController,
              placeholder: StringsManager.address,
              validator: Validator().required().run,
            ),
            GapWidget.s16(),
            TextFieldWidget(
              initialValue: widget.formData != null ? widget.formData!.mapsLink : null,
              controller: _mapsLinkController,
              placeholder: StringsManager.mapsLink,
              validator: Validator().isOptional().run,
            ),
            GapWidget.s16(),
            TextFieldWidget(
              initialValue: widget.formData != null ? widget.formData!.notes : null,
              controller: _notesController,
              placeholder: StringsManager.notes,
              isTextarea: true,
              validator: Validator().isOptional().run,
            ),
            GapWidget.s16(),
            CheckboxWidget(
              label: StringsManager.allowopenPackageBeforePayment,
              value: widget.formData != null ? widget.formData!.allowPayment : true,
            ),
            GapWidget.s16(),
            ButtonWidget(
              label: StringsManager.submit,
              onPressed: () {
                if (widget.formKey.currentState!.validate()) {
                  return widget.onSubmit(
                    Order(
                      receiverName: _receiverNameController.text,
                      price: double.parse(_priceController.text),
                      phoneNumber1: _phoneNumber1Controller.text,
                      phoneNumber2: _phoneNumber2Controller.text,
                      address: _addressController.text,
                      mapsLink: _mapsLinkController.text,
                      notes: _notesController.text,
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

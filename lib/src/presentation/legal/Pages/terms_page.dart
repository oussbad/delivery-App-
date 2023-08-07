import 'package:boxpend_flutter_android_app/src/app/resources/strings_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/loader_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/text_block_widget.dart';
import 'package:boxpend_flutter_android_app/src/presentation/legal/Controllers/terms_controller.dart';
import 'package:boxpend_flutter_android_app/src/presentation/legal/models/legal_model.dart';
import 'package:boxpend_flutter_android_app/src/presentation/legal/widgets/legal_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TermsPage extends GetView<TermsController> {
  const TermsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextBlocKWidget.subTitle(
          StringsManager.termsAndConditions,
        ),
      ),
      body: FutureBuilder<List<LegalModel>>(
        future: controller.loadTermsData(),
        builder: (context, future) {
          if (future.connectionState == ConnectionState.waiting) {
            return _buildLoaderWidget();
          } else if (future.hasError) {
            return _buildErrorWidget();
          } else {
            return _buildDataWidget(future.data);
          }
        },
      ),
    );
  }

  Widget _buildLoaderWidget() {
    return const Center(
      child: LoaderWidget(),
    );
  }

  Widget _buildErrorWidget() {
    return Center(
      child: TextBlocKWidget.title(StringsManager.unexpectedError),
    );
  }

  Widget _buildDataWidget(List<LegalModel>? data) {
    return ListView.builder(
      itemCount: data!.length,
      itemBuilder: (context, index) => LegalWidget(
        title: data[index].title!,
        description: data[index].description!,
        bulleted: data[index].bulleted!,
      ),
    );
  }
}

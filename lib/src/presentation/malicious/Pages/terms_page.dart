import 'package:boxpend_flutter_android_app/src/app/resources/assets_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/resources/strings_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/app_bar_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/loader_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/text_block_widget.dart';
import 'package:boxpend_flutter_android_app/src/presentation/malicious/Controllers/legal_controller.dart';
import 'package:boxpend_flutter_android_app/src/presentation/malicious/models/legal_model.dart';
import 'package:boxpend_flutter_android_app/src/presentation/malicious/widgets/legal_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TermsPage extends StatelessWidget {
  TermsPage({super.key});

  final controller = Get.put(LegalController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
        withLogo: false,
        withBackButton: true,
        title: StringsManager.termsAndConditions,
      ),
      body: FutureBuilder<List<LegalModel>>(
        future: controller.loadLegalData(AssetsManager.terms),
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
      child: TextBlocKWidget.t14(StringsManager.unexpectedError),
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

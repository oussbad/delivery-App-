import 'package:boxpend_flutter_android_app/src/app/resources/strings_manager.dart';
import 'package:get/get.dart';

class Validator {
  List<String? Function(String? value)> validators = [];

  String? run(String? value) {
    for (var validator in validators) {
      final validated = validator(value);

      if (validated != null) {
        return validated;
      }
    }
    return null;
  }

  Validator _addValidators(String? Function(String? value) validator) {
    validators.add(validator);
    return this;
  }

  Validator required() => _addValidators(
        (value) => GetUtils.isNullOrBlank(value) == true ? StringsManager.requiredErrorMessage : null,
      );

  Validator isOptional() => _addValidators(
        (value) => GetUtils.isNull(value) || GetUtils.isBlank(value)! ? null : null,
      );

  Validator isUsername() => _addValidators(
        (value) => !GetUtils.isUsername(value!) ? StringsManager.usernameErrorMessage : null,
      );

  Validator isEmail() => _addValidators(
        (value) => !GetUtils.isEmail(value!) ? StringsManager.emailErrorMessage : null,
      );

  Validator password(int max) => _addValidators(
        (value) => GetUtils.isLengthLessThan(value, max) ? StringsManager.passwordErrorMessage : null,
      );

  Validator confirmPassword(String password, String confirmPassword) => _addValidators(
        (value) => password != confirmPassword ? StringsManager.confirmPasswordErrorMessage : null,
      );

  Validator isPhoneNumber() => _addValidators(
        (value) => !GetUtils.isPhoneNumber(value!) ? StringsManager.phoneNumberErrorMessage : null,
      );

  Validator isPrice() => _addValidators(
        (value) => !GetUtils.isNum(value!) ? StringsManager.priceErrorMessage : null,
      );
}

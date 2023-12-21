import 'package:flutter/material.dart';

import '../utils/dimens.dart';

class CustomSizedBox extends StatelessWidget {
  const CustomSizedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: customHeight);
  }
}

class CustomSizedBoxforSettings extends StatelessWidget {
  const CustomSizedBoxforSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: 10);
  }
}

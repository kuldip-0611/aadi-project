import 'package:flutter/material.dart';

import '../../utils/color_constant.dart';
import '../../widgets/custom_appbar.dart';

class CompletedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: CustomAppBar(
        hasBackButton: false,
        title: 'Completed',
      ),
      body: Center(
        child: Text(
          'Completed Screen',
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: Theme.of(context).primaryColor),
        ),
      ),
    );
  }
}

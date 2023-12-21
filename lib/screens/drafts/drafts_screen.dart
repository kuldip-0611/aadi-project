import 'package:first_star_energy/utils/color_constant.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_appbar.dart';

class DraftsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: CustomAppBar(
        hasBackButton: false,
        title: 'Drafts',
      ),
      body: Center(
        child: Text(
          'Drafts Screen',
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: Theme.of(context).primaryColor),
        ),
      ),
    );
  }
}

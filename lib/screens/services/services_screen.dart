import 'package:first_star_energy/utils/routes.dart';
import 'package:flutter/material.dart';

import '../../utils/color_constant.dart';
import '../../utils/dimens.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_list_tile.dart';
import '../../widgets/custom_sizedbox.dart';
import 'entergy/entergy_screen.dart';

class ServicesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: CustomAppBar(
        hasBackButton: false,
        title: 'Services',
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: defaultPadding,
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const CustomSizedBoxforSettings(),
                  CustomListTile(
                    label: 'Entergy',
                    isLastItem: true,
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        AppRoutes.entergy,
                        arguments: 'Entergy',
                      );
                    },
                    isTrailing: true,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

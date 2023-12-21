import 'package:flutter/material.dart';

import '../../../utils/color_constant.dart';
import '../../../utils/dimens.dart';
import '../../../widgets/custom_appbar.dart';
import '../../../widgets/custom_list_tile.dart';
import '../../../widgets/custom_sizedbox.dart';

class EntergyScreen extends StatefulWidget {
  const EntergyScreen({super.key, required this.title});

  final String title;

  @override
  State<EntergyScreen> createState() => _EntergyScreenState();
}

class _EntergyScreenState extends State<EntergyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor.withOpacity(0.4),
      appBar: CustomAppBar(
        hasBackButton: true,
        title: widget.title ?? '',
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
                  CustomListTile(
                    label: 'General',
                    isLastItem: true,
                    onTap: () {},
                    isTrailing: true,
                  ),
                  const CustomSizedBoxforSettings(),
                  CustomListTile(
                    label: 'HVAC Systems',
                    isLastItem: true,
                    onTap: () {},
                    isTrailing: true,
                  ),
                  const CustomSizedBoxforSettings(),
                  CustomListTile(
                    label: 'Domestic Hot Water',
                    isLastItem: true,
                    onTap: () {},
                    isTrailing: true,
                  ),
                  const CustomSizedBoxforSettings(),
                  CustomListTile(
                    label: 'Direct Install',
                    isLastItem: true,
                    onTap: () {},
                    isTrailing: true,
                  ),
                  const CustomSizedBoxforSettings(),
                  CustomListTile(
                    label:
                        'Customized Recommendations & Measures, and Terms & Conditions',
                    isLastItem: true,
                    onTap: () {},
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

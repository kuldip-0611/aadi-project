import 'package:first_star_energy/utils/dimens.dart';
import 'package:first_star_energy/widgets/custom_appbar.dart';
import 'package:first_star_energy/widgets/custom_sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../utils/color_constant.dart';
import '../../widgets/custom_list_tile.dart';

class SettingsScreen extends StatefulWidget {
  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String? _version;
  String? _buildNumber;

  Future<void> _getAppVersion() async {
    final packageInfo = await PackageInfo.fromPlatform();

    String version = packageInfo.version;
    String buildNumber = packageInfo.buildNumber;

    setState(() {
      _version = version;
      _buildNumber = buildNumber;
    });
  }

  @override
  void initState() {
    super.initState();
    _getAppVersion();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: CustomAppBar(
        hasBackButton: false,
        title: 'Settings',
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
                  Text(
                    " Genreral settings",
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: Theme.of(context).primaryColor.withOpacity(0.8)),
                  ),
                  const CustomSizedBoxforSettings(),
                  CustomListTile(
                    label: 'Account settings',
                    isLastItem: false,
                    onTap: () {
                      // Handle onTap for Item 1
                    },
                    isTrailing: true,
                  ),
                  CustomListTile(
                    label: 'Profile Management',
                    onTap: () {
                      // Handle onTap for Item 2
                    },
                    isTrailing: true,
                    isLastItem: true,
                  ),
                  const CustomSizedBoxforSettings(),
                  Text(
                    " Company info.",
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: Theme.of(context).primaryColor.withOpacity(0.8)),
                  ),
                  const CustomSizedBoxforSettings(),
                  CustomListTile(
                    label: 'Company details',
                    onTap: () {
                      // Handle onTap for Item 3
                    },
                    isTrailing: true,
                    isLastItem: false,
                  ),
                  CustomListTile(
                    label: 'Licenses',
                    onTap: () {
                      // Handle onTap for Item 3
                    },
                    isTrailing: true,
                    isLastItem: false,
                  ),
                  CustomListTile(
                    label: 'Privacy policy',
                    onTap: () {
                      // Handle onTap for Item 3
                    },
                    isTrailing: true,
                    isLastItem: false,
                  ),
                  CustomListTile(
                    label: 'Terms of use',
                    onTap: () {
                      // Handle onTap for Item 3
                    },
                    isTrailing: true,
                    isLastItem: true,
                  ),
                  const CustomSizedBoxforSettings(),
                  CustomListTile(
                    label: 'Logout',
                    onTap: () {
                      // Handle onTap for Item 3
                    },
                    isTrailing: false,
                    isLastItem: true,
                  ),
                  const CustomSizedBoxforSettings(),
                  Text(
                    " $_version",
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: Theme.of(context).primaryColor.withOpacity(0.8)),
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

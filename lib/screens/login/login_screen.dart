import 'package:first_star_energy/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider/provider.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import '../../providers/auth_provider.dart';
import '../../utils/dimens.dart';
import '../../utils/routes.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_sizedbox.dart';
import '../../widgets/custom_textfield.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = "/login";

  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);

    return Scaffold(
      resizeToAvoidBottomInset: true,
      extendBody: true,
      appBar: CustomAppBar(
          title: AppLocalizations.of(context)!.login, hasBackButton: false),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: defaultPadding,
            child: FormBuilder(
              key: _formKey,
              child: Center(
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Welcome,',
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(fontWeight: FontWeight.w400),
                      ),
                      const CustomSizedBox(),
                      Text(
                        'Login to your account',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(fontWeight: FontWeight.w500),
                      ),
                      const CustomSizedBox(),
                      CustomTextField(
                        label: AppLocalizations.of(context)!.email,
                        onChanged: (value) =>
                            authProvider.updateEmail(value.toString()),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(),
                          FormBuilderValidators.email(),
                        ]),
                      ),
                      const CustomSizedBox(),
                      CustomTextField(
                        label: AppLocalizations.of(context)!.password,
                        obscureText: true,
                        onChanged: (value) =>
                            authProvider.updatePassword(value!),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(),
                          FormBuilderValidators.match(
                              r'^(?=.*[A-Z])(?=.*[!@#$&*])(?=.*\d).{8,}$'),
                        ]),
                      ),
                      const CustomSizedBox(),
                      CustomButton(
                        child: Text(AppLocalizations.of(context)!.submit),
                        onPressed: () {
                          if (_formKey.currentState?.saveAndValidate() ??
                              false) {
                            FocusScope.of(context).unfocus();
                            print(_formKey.currentState!.value);
                            Navigator.pushNamed(
                                context, AppRoutes.bottomNavBar);
                          }
                        },
                      ),
                      TextButton(
                        onPressed: () {
                          // Add your forgot password logic here
                        },
                        child:
                            Text(AppLocalizations.of(context)!.forgotPassword),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

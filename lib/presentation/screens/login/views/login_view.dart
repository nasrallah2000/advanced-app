import 'package:advanced_app/presentation/global_widgets/global_text_form_field.dart';
import 'package:advanced_app/presentation/presentation_managers/exports.dart';
import 'package:advanced_app/presentation/screens/login/view_model/cubit.dart';
import 'package:advanced_app/presentation/screens/login/view_model/states.dart';

import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginStates>(
      listener: (context, state) {},
      builder: (context, state) {
        LoginCubit cubit = LoginCubit.get(context);
        return Scaffold(
          backgroundColor: ColorManager.white,
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Form(
              key: cubit.formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: AppPadding.p100),
                    child: Image.asset(ImageAssets.splashlogo),
                  ),
                  const SizedBox(height: AppSize.s20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: AppPadding.p28),
                    child: GlobalTextFormField(
                      textInputType: TextInputType.emailAddress,
                      textController: cubit.emailController,
                      decoration: InputDecoration(
                        hintText: AppStrings.username,
                        labelText: AppStrings.username,
                      ),
                    ),
                  ),
                  const SizedBox(height: AppSize.s20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: AppPadding.p28),
                    child: GlobalTextFormField(
                      textInputType: TextInputType.visiblePassword,
                      textController: cubit.passwordController,
                      decoration: InputDecoration(
                        hintText: AppStrings.password,
                        labelText: AppStrings.password,
                      ),
                    ),
                  ),
                  const SizedBox(height: AppSize.s28),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: AppPadding.p28),
                    child: SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                            cubit.userLogin();
                          },
                          child: Text(
                            AppStrings.login,
                          )),
                    ),
                  ),
                  const SizedBox(height: AppSize.s28),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          AppStrings.forgetPassword,
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          AppStrings.registerText,
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

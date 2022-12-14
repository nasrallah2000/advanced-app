import 'package:advanced_app/presentation/global_widgets/global_text_button.dart';
import 'package:advanced_app/presentation/global_widgets/global_text_form_field.dart';
import 'package:advanced_app/presentation/presentation_managers/exports.dart';
import 'package:advanced_app/presentation/screens/login/view_model/cubit.dart';
import 'package:advanced_app/presentation/screens/login/view_model/states.dart';
import 'package:advanced_app/utities/main_method.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginStates>(
      listener: (context, state) {
        if (state is LoginSuccessState) {
          showToast(text: 'Login Successfully', state: ToastState.SUCCESS);
        }
      },
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
                      vaildMessage: AppStrings.usernameError,
                      decoration: const InputDecoration(
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
                      vaildMessage: AppStrings.passwordError,
                      isPassword: true,
                      decoration: const InputDecoration(
                        hintText: AppStrings.password,
                        labelText: AppStrings.password,
                      ),
                    ),
                  ),
                  const SizedBox(height: AppSize.s28),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: AppPadding.p28),
                    child: SizedBox(
                      height: AppSize.s50,
                      width: double.infinity,
                      child: ConditionalBuilder(
                        condition: state is! LoginLoadingState,
                        builder: (context) => ElevatedButton(
                          onPressed: () {
                            if (cubit.formKey.currentState!.validate()) {
                              cubit.userLogin();
                            }
                          },
                          child: const Text(
                            AppStrings.login,
                          ),
                        ),
                        fallback: (context) => const Center(child: CircularProgressIndicator()),
                      ),
                    ),
                  ),
                  const SizedBox(height: AppSize.s28),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: AppPadding.p28),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GlobalTextButton(
                          onPressed: () {},
                          text: AppStrings.forgetPassword,
                        ),
                        GlobalTextButton(
                          onPressed: () {
                            //navTo(routeName: Routes.splashRoute, context: context);
                          },
                          text: AppStrings.registerText,
                        ),
                      ],
                    ),
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

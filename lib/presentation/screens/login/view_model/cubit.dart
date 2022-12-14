import 'package:advanced_app/data/remote/dio_helper.dart';
import 'package:advanced_app/domain/models/auth_model.dart';
import 'package:advanced_app/presentation/presentation_managers/exports.dart';
import 'package:advanced_app/presentation/screens/login/view_model/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitialState());

  static LoginCubit get(context) => BlocProvider.of(context);

  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  AuthModel? authModel;
  InternetConnectionChecker? networkInfo;
  void userLogin() async {
    emit(LoginLoadingState());
    if (await networkInfo!.hasConnection) {
      await DioHelper.postData(
        url: AppConst.loginEndPoint,
        data: {
          'email': emailController.text.trim(),
          'password': passwordController.text.trim(),
        },
      ).then((value) {
        authModel = AuthModel.fromJson(value!.data);
        emit(LoginSuccessState());
      }).catchError((error) {
        emit(LoginErrorState(error));
      });
    } else {
      print('no internet');
    }
  }
}

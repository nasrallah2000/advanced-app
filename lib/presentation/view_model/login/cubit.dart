import 'package:advanced_app/presentation/view_model/login/states.dart';
import '../../presentation_managers/exports.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitialState());

  static LoginCubit get(context) => BlocProvider.of(context);
  
  
}

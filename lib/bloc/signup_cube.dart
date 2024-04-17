import 'package:flutter_bloc/flutter_bloc.dart';

enum RegisterPages { phone, pinCode, name }

class RegisterCubit extends Cubit<RegisterPages> {
  RegisterCubit() : super(RegisterPages.phone);
  void next(RegisterPages page) => emit(page);
}

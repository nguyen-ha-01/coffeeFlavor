import 'package:flutter_bloc/flutter_bloc.dart';

enum NavBarPages { home, message, notification, profile }

class NavBarCubit extends Cubit<NavBarPages> {
  NavBarCubit() : super(NavBarPages.home);
  void next(NavBarPages page) => emit(page);
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/type/type_main.dart';

@injectable
class MainCubit extends Cubit<TypeMain> {
  MainCubit() : super(TypeMain.home);

  void setBottomNavBarItem(TypeMain item) {
    emit(item);
  }
}

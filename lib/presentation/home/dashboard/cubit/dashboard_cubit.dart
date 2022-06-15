import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/domain/auth/i_auth_facade.dart';
import 'package:fortfolio/domain/auth/i_storage_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'dashboard_state.dart';
part 'dashboard_cubit.freezed.dart';

@injectable
class DashboardCubit extends Cubit<DashboardState> {
  final IStorageFacade storageFacade;
  final IAuthFacade authFacade;
  DashboardCubit(this.storageFacade, this.authFacade) : super(DashboardState.initial()){
    // initNews();
  }

  void initNews() async {
    emit(state.copyWith(loading: true,failure: "", newsList: []));
    final newsList = await storageFacade.getNewsFromStorage();
    final List<String> urlList = [];
    newsList.fold((failure) {
      emit(state.copyWith(failure: failure, loading: false));
    }, (list) async {
      for(var items in list) {
        var url = await items.getDownloadURL();
        urlList.add(url);
      }
      emit(state.copyWith(newsList: urlList, loading: false));
    });
  }

  void refresh() async{
    await authFacade.refresh();
  }
}

import 'package:bloc/bloc.dart';
import 'package:fortfolio/domain/auth/i_storage_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:firebase_storage/firebase_storage.dart';

part 'dashboard_state.dart';
part 'dashboard_cubit.freezed.dart';

class DashboardCubit extends Cubit<DashboardState> {
  final IStorageFacade storageFacade;
  DashboardCubit(this.storageFacade) : super(DashboardState.initial());

  void initNews() async {
    emit(state.copyWith(loading: true,failure: "", newsList: []));
    final newsList = await storageFacade.getNewsFromStorage();
    newsList.fold((failure) {
      emit(state.copyWith(failure: failure, loading: false));
    }, (list) {
      emit(state.copyWith(newsList: list, loading: false));
    });
  }
}

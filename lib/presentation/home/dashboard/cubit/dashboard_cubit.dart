import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/application/auth/auth_cubit.dart';
import 'package:fortfolio/domain/auth/i_auth_facade.dart';
import 'package:fortfolio/domain/auth/i_firestore_facade.dart';
import 'package:fortfolio/domain/user/news.dart';
import 'package:fortfolio/infrastructure/auth/dto/news/news_dto.dart';
import 'package:fortfolio/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'dashboard_state.dart';
part 'dashboard_cubit.freezed.dart';

@injectable
class DashboardCubit extends Cubit<DashboardState> {
  final IFirestoreFacade firestoreFacade;
  final IAuthFacade authFacade;
  late final AuthCubit authCubit;
  StreamSubscription<QuerySnapshot>? _logsNewsSubscription;
  DashboardCubit(this.authFacade, this.firestoreFacade) : super(DashboardState.initial()){
    authCubit = getIt<AuthCubit>();
    authCubit.stream.listen((state) {
      if (state.isLoggedIn) {
        initNews();
      }
    });
  }

  void initNews() async {
    emit(state.copyWith(loading: true,failure: "", newsList: []));
    _logsNewsSubscription = firestoreFacade.getNews().listen((data) {
      final List<QueryDocumentSnapshot<Object?>> docs = data.docs;
      List<NewsModel> newsList = [];
      if (data.size > 0) {
        for (var element in docs) {
          final doc = NewsModelDTO.fromFirestore(element).toDomain();
          newsList.add(doc);
        }
        emit(state.copyWith(newsList: newsList));
      }
    });
  }

  void refresh() async{
    await authFacade.refresh();
  }

  @override
  Future<void> close() async{
    await _logsNewsSubscription!.cancel();
    // TODO: implement close
    return super.close();
  }
}

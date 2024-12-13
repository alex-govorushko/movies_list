import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_list/data/local_storage/movies_cache.dart';

class DashboardCubit extends Cubit<int> {
  final MoviesCache _cache;

  DashboardCubit(this._cache) : super(0);

  void getWatchedStatistics() {
    emit(_cache.watchedMoviesAmount);
  }
}
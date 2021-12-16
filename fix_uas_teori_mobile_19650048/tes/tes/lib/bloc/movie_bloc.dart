import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tes/models/models.dart';
import 'package:tes/services/services.dart';

part 'movie_event.dart';
part 'movie_state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  @override
  MovieState get initialState => MovieInitial();

  @override
  Stream<MovieState> mapEventToState(MovieEvent event) async* {
    if (event is FetchMovie) {
      List<Movie> movies = await MovieServices.getMovies(1);
      yield MovieLoaded(
          movies: movies
              .where((element) =>
                  !element.title.toLowerCase().contains('365') &&
                  !element.title.toLowerCase().contains('bois'))
              .toList());
    }
  }
}

import 'package:equatable/equatable.dart';
import 'package:manga_nih/models/models.dart';

abstract class FavoriteMangaEvent extends Equatable {
  FavoriteMangaEvent();
}

class FavoriteMangaAddRemove extends FavoriteMangaEvent {
  final FavoriteManga favoriteManga;

  FavoriteMangaAddRemove({required this.favoriteManga});

  @override
  List<Object?> get props => [favoriteManga];
}

class FavoriteMangaFetch extends FavoriteMangaEvent {
  final String endpoint;

  FavoriteMangaFetch({required this.endpoint});

  @override
  List<Object?> get props => [endpoint];
}

class FavoriteMangaFetchList extends FavoriteMangaEvent {
  FavoriteMangaFetchList();

  @override
  List<Object?> get props => [];
}
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:revendo_api_riverpod_clean_arch/src/domain/entities/movie_entity.dart';

class MovieDto extends MovieEntity {
  MovieDto({
    required bool adult,
    required String backdropPath,
    required int id,
    required String title,
    required String originalLanguage,
    required String originalTitle,
    required String overview,
    required String posterPath,
    required String mediaType,
    required List<int> genreIds,
    required double popularity,
    required String releaseDate,
    required bool video,
    required double voteAverage,
    required int voteCount,
  }) : super(
          adult: adult,
          backdropPath: backdropPath,
          id: id,
          title: title,
          originalLanguage: originalLanguage,
          originalTitle: originalTitle,
          overview: overview,
          posterPath: posterPath,
          mediaType: mediaType,
          genreIds: genreIds,
          popularity: popularity,
          releaseDate: releaseDate,
          video: video,
          voteAverage: voteAverage,
          voteCount: voteCount,
        );

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'adult': adult});
    result.addAll({'backdrop_path': backdropPath});
    result.addAll({'id': id});
    result.addAll({'title': title});
    result.addAll({'original_language': originalLanguage});
    result.addAll({'original_title': originalTitle});
    result.addAll({'overview': overview});
    result.addAll({'poster_path': posterPath});
    result.addAll({'media_type': mediaType});
    result.addAll({'genre_ids': genreIds});
    result.addAll({'popularity': popularity});
    result.addAll({'release_date': releaseDate});
    result.addAll({'video': video});
    result.addAll({'vote_average': voteAverage});
    result.addAll({'vote_count': voteCount});

    return result;
  }

  factory MovieDto.fromMap(Map<String, dynamic> map) {
    return MovieDto(
      adult: map['adult'] ?? false,
      backdropPath: map['backdrop_path'] ?? '',
      id: map['id']?.toInt() ?? 0,
      title: map['title'] ?? '',
      originalLanguage: map['original_language'] ?? '',
      originalTitle: map['original_title'] ?? '',
      overview: map['overview'] ?? '',
      posterPath: map['poster_path'] ?? '',
      mediaType: map['media_type'] ?? '',
      genreIds: List<int>.from(map['genre_ids']),
      popularity: map['popularity']?.toDouble() ?? 0.0,
      releaseDate: map['release_date'] ?? '',
      video: map['video'] ?? false,
      voteAverage: map['vote_average']?.toDouble() ?? 0.0,
      voteCount: map['vote_count']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory MovieDto.fromJson(String source) => MovieDto.fromMap(json.decode(source));

  @override
  String toString() {
    return 'MovieDto(adult: $adult, backdropPath: $backdropPath, id: $id, title: $title, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, posterPath: $posterPath, mediaType: $mediaType, genreIds: $genreIds, popularity: $popularity, releaseDate: $releaseDate, video: $video, voteAverage: $voteAverage, voteCount: $voteCount)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MovieDto &&
        other.adult == adult &&
        other.backdropPath == backdropPath &&
        other.id == id &&
        other.title == title &&
        other.originalLanguage == originalLanguage &&
        other.originalTitle == originalTitle &&
        other.overview == overview &&
        other.posterPath == posterPath &&
        other.mediaType == mediaType &&
        listEquals(other.genreIds, genreIds) &&
        other.popularity == popularity &&
        other.releaseDate == releaseDate &&
        other.video == video &&
        other.voteAverage == voteAverage &&
        other.voteCount == voteCount;
  }

  @override
  int get hashCode {
    return adult.hashCode ^
        backdropPath.hashCode ^
        id.hashCode ^
        title.hashCode ^
        originalLanguage.hashCode ^
        originalTitle.hashCode ^
        overview.hashCode ^
        posterPath.hashCode ^
        mediaType.hashCode ^
        genreIds.hashCode ^
        popularity.hashCode ^
        releaseDate.hashCode ^
        video.hashCode ^
        voteAverage.hashCode ^
        voteCount.hashCode;
  }

  MovieDto copyWith({
    bool? adult,
    String? backdropPath,
    int? id,
    String? title,
    String? originalLanguage,
    String? originalTitle,
    String? overview,
    String? posterPath,
    String? mediaType,
    List<int>? genreIds,
    double? popularity,
    String? releaseDate,
    bool? video,
    double? voteAverage,
    int? voteCount,
  }) {
    return MovieDto(
      adult: adult ?? this.adult,
      backdropPath: backdropPath ?? this.backdropPath,
      id: id ?? this.id,
      title: title ?? this.title,
      originalLanguage: originalLanguage ?? this.originalLanguage,
      originalTitle: originalTitle ?? this.originalTitle,
      overview: overview ?? this.overview,
      posterPath: posterPath ?? this.posterPath,
      mediaType: mediaType ?? this.mediaType,
      genreIds: genreIds ?? this.genreIds,
      popularity: popularity ?? this.popularity,
      releaseDate: releaseDate ?? this.releaseDate,
      video: video ?? this.video,
      voteAverage: voteAverage ?? this.voteAverage,
      voteCount: voteCount ?? this.voteCount,
    );
  }
}

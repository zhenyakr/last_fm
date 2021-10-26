import 'package:equatable/equatable.dart';

class AlbumDetailsRequest extends Equatable {
  AlbumDetailsRequest({
    required this.artist,
    required this.album,
  });

  final String artist;
  final String album;

  @override
  List<Object> get props => [
        artist,
        album,
      ];
}

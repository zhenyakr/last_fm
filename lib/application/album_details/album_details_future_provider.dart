import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:last_fm/domain/album_details/album_form.dart';
import 'package:last_fm/domain/search/local/album_details_request.dart';
import 'package:last_fm/infrastructure/details/details_service.dart';

final albumDetailsFutureProvider = FutureProvider.autoDispose
    .family<AlbumForm, AlbumDetailsRequest>((ref, data) async {
  final result = await DetailsService().albumDetails(data);

  return result;
});

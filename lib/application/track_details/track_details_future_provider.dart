import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:last_fm/domain/search/local/album_details_request.dart';
import 'package:last_fm/domain/track_details/track_form.dart';
import 'package:last_fm/infrastructure/details/details_service.dart';

final trackDetailsFutureProvider = FutureProvider.autoDispose
    .family<TrackForm, AlbumDetailsRequest>((ref, data) async {
  final result = await DetailsService().trackDetails(data);
  return result;
});

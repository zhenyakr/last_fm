import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:last_fm/domain/artist_details/artist_form.dart';
import 'package:last_fm/infrastructure/details/details_service.dart';

final artistDetailsFutureProvider =
    FutureProvider.autoDispose.family<ArtistForm, String>((ref, data) async {
  final result = await DetailsService().artistDetails(data);

  return result;
});

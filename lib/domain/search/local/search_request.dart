import 'package:equatable/equatable.dart';

class SearchRequest extends Equatable {
  SearchRequest({
    required this.page,
    required this.request,
  });

  final String request;
  final int page;

  @override
  List<Object> get props => [
        request,
        page,
      ];
}

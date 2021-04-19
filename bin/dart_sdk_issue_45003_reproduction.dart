import 'package:freezed_annotation/freezed_annotation.dart';

part 'dart_sdk_issue_45003_reproduction.freezed.dart';

void main(List<String> arguments) {}

class State {
  final MetadataState<int> intMetadataState;
  final MetadataState<String> stringMetadataState;

  const State({
    required this.intMetadataState,
    required this.stringMetadataState,
  });

  static const initial = State(
    intMetadataState: MetadataState<int>(),
    stringMetadataState: MetadataState<String>(),
  );
}

@freezed
class MetadataState<Metadata> with _$MetadataState<Metadata> {
  const factory MetadataState() = _MetadataState;
}

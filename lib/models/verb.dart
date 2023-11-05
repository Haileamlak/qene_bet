import 'package:json_annotation/json_annotation.dart';

part 'verb.g.dart';

@JsonSerializable()
class Verb {
  final String word;
  final String partOfSpeech;
  final String inAmharic;
  final String family;
  Verb(this.word, this.inAmharic, this.partOfSpeech, this.family);

  factory Verb.fromJson(Map<String, dynamic> json) => _$VerbFromJson(json);
  Map<String, dynamic> toJson() => _$VerbToJson(this);
}

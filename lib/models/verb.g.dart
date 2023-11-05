// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verb.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Verb _$VerbFromJson(Map<String, dynamic> json) => Verb(
      json['word'] as String,
      json['inAmharic'] as String,
      json['partOfSpeech'] as String,
      json['family'] as String,
    );

Map<String, dynamic> _$VerbToJson(Verb instance) => <String, dynamic>{
      'word': instance.word,
      'partOfSpeech': instance.partOfSpeech,
      'inAmharic': instance.inAmharic,
      'family': instance.family,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firebase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$PostUpdateToJson(PostUpdate instance) =>
    <String, dynamic>{
      'title': instance.title,
      'text': instance.text,
      'user': user_toJson(instance.user),
    };

Post _$PostFromJson(Map<String, dynamic> json) => Post(
      title: json['title'] as String,
      text: json['text'] as String,
      user: user_fromJson(json['user'] as DocumentReference<User>),
    );

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
      'title': instance.title,
      'text': instance.text,
      'user': user_toJson(instance.user),
    };

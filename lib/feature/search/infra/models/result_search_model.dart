import 'dart:convert';

import 'package:clean_architeture/feature/search/domain/entities/result_search.dart';

class ResultSearchModel extends ResultSearch {
  final String login;
  final String? email;
  final String? avatarUrl;
  final String? nickname;
  final String? bio;

  ResultSearchModel(this.login,
      {this.email, this.avatarUrl, this.nickname, this.bio});

  Map<String, dynamic> toMap() {
    return {
      'login': login,
      'email': email,
      'avatarUrl': avatarUrl,
      'nickname': nickname,
      'bio': bio,
    };
  }

  factory ResultSearchModel.fromMap(Map<String, dynamic> map) {
    return ResultSearchModel(
      map['login'],
      email: map['email'],
      avatarUrl: map['avatarUrl'],
      nickname: map['nickname'],
      bio: map['bio'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ResultSearchModel.fromJson(String source) =>
      ResultSearchModel.fromMap(json.decode(source));
}

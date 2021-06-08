import 'dart:convert';

import 'package:clean_architeture/feature/search/infra/models/result_search_model.dart';

class GithubResultSearchModel extends ResultSearchModel {
  final String login;
  final String? email;
  final String? avatarUrl;
  final String? nickname;
  final String? bio;

  GithubResultSearchModel(this.login,
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

  factory GithubResultSearchModel.fromMap(Map<String, dynamic> map) {
    return GithubResultSearchModel(
      map['login'],
      email: map['email'],
      avatarUrl: map['avatarUrl'],
      nickname: map['nickname'],
      bio: map['bio'],
    );
  }

  String toJson() => json.encode(toMap());

  factory GithubResultSearchModel.fromJson(String source) =>
      GithubResultSearchModel.fromMap(json.decode(source));
}

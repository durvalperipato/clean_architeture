import 'dart:convert';

import 'package:clean_architeture/feature/search/infra/models/result_search_model.dart';

class YoutubeSearchModel extends ResultSearchModel {
  final String description;

  YoutubeSearchModel(this.description);

  Map<String, dynamic> toMap() {
    return {
      'description': description,
    };
  }

  factory YoutubeSearchModel.fromMap(Map<String, dynamic> map) {
    return YoutubeSearchModel(
      map['description'],
    );
  }

  String toJson() => json.encode(toMap());

  factory YoutubeSearchModel.fromJson(String source) =>
      YoutubeSearchModel.fromMap(json.decode(source));
}

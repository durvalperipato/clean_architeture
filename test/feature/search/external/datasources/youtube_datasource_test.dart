import 'dart:convert';

import 'package:clean_architeture/feature/search/external/datasources/youtube_datasource.dart';
import 'package:clean_architeture/feature/search/infra/models/youtube_search_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'github_datasource_test.mocks.dart';

void main() {
  final MockDio dio = MockDio();
  final YoutubeDataSource dataSource = YoutubeDataSource(dio);

  test('Should return a List of YoutubeSearchModel', () async {
    when(dio.get(any)).thenAnswer((_) async => Response(
        data: jsonDecode(jsonResponse),
        statusCode: 200,
        requestOptions: RequestOptions(path: '')));

    var result = await dataSource.searchText('twocanada');
    expect(result, isA<List<YoutubeSearchModel>>());
  });
}

var jsonResponse = '''{
    "kind": "youtube#searchListResponse",
    "etag": "jIkiHtpahGKhsJ97TfZyZsL8gu0",
    "nextPageToken": "CAUQAA",
    "regionCode": "BR",
    "pageInfo": {
        "totalResults": 7,
        "resultsPerPage": 5
    },
    "items": [
        {
            "kind": "youtube#searchResult",
            "etag": "zyYvNo9jXawoxUU9ZjhDYy2xs_w",
            "id": {
                "kind": "youtube#video",
                "videoId": "dS6plnyDezk"
            },
            "snippet": {
                "publishedAt": "2020-07-23T10:00:11Z",
                "channelId": "UC_SiNqaqhMquztWSegxbnuA",
                "title": "Back to School Shopping Haul with Sisters Play Toys",
                "description": "September will be here before you know it, which means it's almost time to stock up on back-to-school school supplies for the academic year ahead. Whether ...",
                "thumbnails": {
                    "default": {
                        "url": "https://i.ytimg.com/vi/dS6plnyDezk/default.jpg",
                        "width": 120,
                        "height": 90
                    },
                    "medium": {
                        "url": "https://i.ytimg.com/vi/dS6plnyDezk/mqdefault.jpg",
                        "width": 320,
                        "height": 180
                    },
                    "high": {
                        "url": "https://i.ytimg.com/vi/dS6plnyDezk/hqdefault.jpg",
                        "width": 480,
                        "height": 360
                    }
                },
                "channelTitle": "Sisters Play Toys",
                "liveBroadcastContent": "none",
                "publishTime": "2020-07-23T10:00:11Z"
            }
        },
        {
            "kind": "youtube#searchResult",
            "etag": "qlv6gEVuQqDv8drW4_QPeYLEpfI",
            "id": {
                "kind": "youtube#video",
                "videoId": "lRxHt9xfxN8"
            },
            "snippet": {
                "publishedAt": "2020-07-29T03:00:17Z",
                "channelId": "UCJE2DiEp9HToDK4QgmDpn9Q",
                "title": "3  common  questions on studying abroad/ 12th/degree? Field change?Job?Malayalam w subtitles",
                "description": "Hi all, Below is the link to Jennas channel, do check it out and subscribe ! https://www.youtube.com/channel/UC0fOnUA-DQMbY5EldudBedw Disclaimer : I am ...",
                "thumbnails": {
                    "default": {
                        "url": "https://i.ytimg.com/vi/lRxHt9xfxN8/default.jpg",
                        "width": 120,
                        "height": 90
                    },
                    "medium": {
                        "url": "https://i.ytimg.com/vi/lRxHt9xfxN8/mqdefault.jpg",
                        "width": 320,
                        "height": 180
                    },
                    "high": {
                        "url": "https://i.ytimg.com/vi/lRxHt9xfxN8/hqdefault.jpg",
                        "width": 480,
                        "height": 360
                    }
                },
                "channelTitle": "Simply Shiji Canada",
                "liveBroadcastContent": "none",
                "publishTime": "2020-07-29T03:00:17Z"
            }
        },
        {
            "kind": "youtube#searchResult",
            "etag": "rS67Nv7vxXOMwt_mp1B2FocwIuo",
            "id": {
                "kind": "youtube#video",
                "videoId": "uVwbhnOr8v8"
            },
            "snippet": {
                "publishedAt": "2018-02-04T14:26:27Z",
                "channelId": "UCoXV1bUMqBp9hZbO0JHfxog",
                "title": "সম্ভাবনার Math (Probability) শিখুন মাত্র ৫ মিনিটে PART-1",
                "description": "সম্ভাবনার Math (Probability) শিখুন মাত্র ৫ মিনিটে PART-1 Follow me at https://web.facebook.com/statisticsmcq/",
                "thumbnails": {
                    "default": {
                        "url": "https://i.ytimg.com/vi/uVwbhnOr8v8/default.jpg",
                        "width": 120,
                        "height": 90
                    },
                    "medium": {
                        "url": "https://i.ytimg.com/vi/uVwbhnOr8v8/mqdefault.jpg",
                        "width": 320,
                        "height": 180
                    },
                    "high": {
                        "url": "https://i.ytimg.com/vi/uVwbhnOr8v8/hqdefault.jpg",
                        "width": 480,
                        "height": 360
                    }
                },
                "channelTitle": "Adi Math Guru",
                "liveBroadcastContent": "none",
                "publishTime": "2018-02-04T14:26:27Z"
            }
        },
        {
            "kind": "youtube#searchResult",
            "etag": "lsFfU8KBO3ri_CbjSY72LyFfVpI",
            "id": {
                "kind": "youtube#video",
                "videoId": "d_BHo-ZNnb4"
            },
            "snippet": {
                "publishedAt": "2020-10-22T21:52:59Z",
                "channelId": "UCTvZcgH_rsvaGuZ8mU5jpnA",
                "title": "Long-term care facilities bracing for COVID-19 surge",
                "description": "Leaders in Kentucky and Indiana are seeing an increase in the COVID-19 numbers at facilities, learning from the start of the pandemic.",
                "thumbnails": {
                    "default": {
                        "url": "https://i.ytimg.com/vi/d_BHo-ZNnb4/default.jpg",
                        "width": 120,
                        "height": 90
                    },
                    "medium": {
                        "url": "https://i.ytimg.com/vi/d_BHo-ZNnb4/mqdefault.jpg",
                        "width": 320,
                        "height": 180
                    },
                    "high": {
                        "url": "https://i.ytimg.com/vi/d_BHo-ZNnb4/hqdefault.jpg",
                        "width": 480,
                        "height": 360
                    }
                },
                "channelTitle": "WHAS11",
                "liveBroadcastContent": "none",
                "publishTime": "2020-10-22T21:52:59Z"
            }
        },
        {
            "kind": "youtube#searchResult",
            "etag": "NG9voFs-Ib2YL8EiFvyQ707R9gI",
            "id": {
                "kind": "youtube#video",
                "videoId": "B2954tQJPKU"
            },
            "snippet": {
                "publishedAt": "2021-02-09T09:03:49Z",
                "channelId": "UCJ0hzlRndX73isQxJCIJbPg",
                "title": "03. STATISTICS",
                "description": "Hey friends, stop playing games, start and show your potential. Hardly prepare for TNEB/TRB/GATE only for next few months. First change your mind with ...",
                "thumbnails": {
                    "default": {
                        "url": "https://i.ytimg.com/vi/B2954tQJPKU/default.jpg",
                        "width": 120,
                        "height": 90
                    },
                    "medium": {
                        "url": "https://i.ytimg.com/vi/B2954tQJPKU/mqdefault.jpg",
                        "width": 320,
                        "height": 180
                    },
                    "high": {
                        "url": "https://i.ytimg.com/vi/B2954tQJPKU/hqdefault.jpg",
                        "width": 480,
                        "height": 360
                    }
                },
                "channelTitle": "RKELECTRICAL GRID",
                "liveBroadcastContent": "none",
                "publishTime": "2021-02-09T09:03:49Z"
            }
        }
    ]
}''';

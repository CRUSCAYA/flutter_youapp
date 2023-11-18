
class VideoModel {
    String kind;
    String etag;
    Id id;
    Snippet snippet;

    VideoModel({
        required this.kind,
        required this.etag,
        required this.id,
        required this.snippet,
    });

    factory VideoModel.fromJson(Map<String, dynamic> json) => VideoModel(
        kind: json["kind"],
        etag: json["etag"],
        id: Id.fromJson(json["id"]),
        snippet: Snippet.fromJson(json["snippet"]),
    );

    Map<String, dynamic> toJson() => {
        "kind": kind,
        "etag": etag,
        "id": id.toJson(),
        "snippet": snippet.toJson(),
    };
}

class Id {
    String kind;
    String videoId;

    Id({
        required this.kind,
        required this.videoId,
    });

    factory Id.fromJson(Map<String, dynamic> json) => Id(
        kind: json["kind"],
        videoId: json["videoId"].toString(),
    );

    Map<String, dynamic> toJson() => {
        "kind": kind,
        "videoId": videoId,
    };
}

class Snippet {
    DateTime publishedAt;
    String channelId;
    String title;
    String description;
    Thumbnails thumbnails;
    String channelTitle;
    String liveBroadcastContent;
    DateTime publishTime;

    Snippet({
        required this.publishedAt,
        required this.channelId,
        required this.title,
        required this.description,
        required this.thumbnails,
        required this.channelTitle,
        required this.liveBroadcastContent,
        required this.publishTime,
    });

    factory Snippet.fromJson(Map<String, dynamic> json) => Snippet(
        publishedAt: DateTime.parse(json["publishedAt"]),
        channelId: json["channelId"],
        title: json["title"],
        description: json["description"],
        thumbnails: Thumbnails.fromJson(json["thumbnails"]),
        channelTitle: json["channelTitle"],
        liveBroadcastContent: json["liveBroadcastContent"],
        publishTime: DateTime.parse(json["publishTime"]),
    );

    Map<String, dynamic> toJson() => {
        "publishedAt": publishedAt.toIso8601String(),
        "channelId": channelId,
        "title": title,
        "description": description,
        "thumbnails": thumbnails.toJson(),
        "channelTitle": channelTitle,
        "liveBroadcastContent": liveBroadcastContent,
        "publishTime": publishTime.toIso8601String(),
    };
}

class Thumbnails {
    Default thumbnailsDefault;
    Default medium;
    Default high;

    Thumbnails({
        required this.thumbnailsDefault,
        required this.medium,
        required this.high,
    });

    factory Thumbnails.fromJson(Map<String, dynamic> json) => Thumbnails(
        thumbnailsDefault: Default.fromJson(json["default"]),
        medium: Default.fromJson(json["medium"]),
        high: Default.fromJson(json["high"]),
    );

    Map<String, dynamic> toJson() => {
        "default": thumbnailsDefault.toJson(),
        "medium": medium.toJson(),
        "high": high.toJson(),
    };
}

class Default {
    String url;
    int width;
    int height;

    Default({
        required this.url,
        required this.width,
        required this.height,
    });

    factory Default.fromJson(Map<String, dynamic> json) => Default(
        url: json["url"],
        width: json["width"]?? 0,
        height: json["height"]?? 0,
    );

    Map<String, dynamic> toJson() => {
        "url": url,
        "width": width,
        "height": height,
    };
}

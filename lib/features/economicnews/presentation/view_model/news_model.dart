class NewsModel {
  final String title;
  final Source source;  // Updated to use the Source model
  final DateTime postedAt;
  final String? image;
  final String? link;
  final String? body;

  NewsModel({
    required this.title,
    required this.source,
    required this.postedAt,
    required this.image,
    required this.link,
    required this.body,
  });

  // Factory constructor for creating a new instance from a JSON map
  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
      title: json['title'],
      source: Source.fromJson(json['source']),  // Parse the source object
      postedAt: DateTime.parse(json['posted_at']),
      image: json['image'],
      link: json['link'],
      body: json['body'],
    );
  }

  // Method to convert the instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'source': source.toJson(),  // Convert the source object to JSON
      'posted_at': postedAt.toIso8601String(),
      'image': image,
      'link': link,
      'body': body,
    };
  }
}


class Source {
  final String name;
  final String rssLink;
  final String type;
  final String image;

  Source({
    required this.name,
    required this.rssLink,
    required this.type,
    required this.image,
  });

  // Factory constructor for creating a new instance from a JSON map
  factory Source.fromJson(Map<String, dynamic> json) {
    return Source(
      name: json['name'],
      rssLink: json['rss_link'],
      type: json['type'],
      image: json['image'],
    );
  }

  // Method to convert the instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'rss_link': rssLink,
      'type': type,
      'image': image,
    };
  }
}


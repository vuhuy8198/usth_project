

class NewsAPI{
  final int id;
  final String title;
  final String sapo;
  final String type;
  final String contentType;
  final int publishDate;
  final String webview;
  final String image;
  final String url;
  final String file;
  final String youtubeUrl;
  final String timeago;
  final int views;
  final int comment;
  final String iconType;
  final String cardType;


  NewsAPI.fromJson(Map<String, dynamic> json):
        this.id = json['province_id'],
        this.title = json['province_title'],
        this.sapo = json['province_sapo'],
        this.type = json['province_type'],
        this.contentType = json['province_contentType'],
        this.publishDate = json['province_publishDate'],
        this.webview = json['province_webview'],
        this.image = json['province_image'],
        this.url = json['province_url'],
        this.file = json['province_file'],
        this.youtubeUrl = json['province_youtubeUrl'],
        this.timeago = json['province_timeago'],
        this.views = json['province_views'],
        this.comment = json['province_comment'],
        this.iconType = json['province_iconType'],
        this.cardType = json['province_cardType'];


  Map<String, dynamic> toJson() => {
    'province_id':this.id,
    'province_title':this.title,
    'province_sapo':this.sapo,
    'province_type':this.type,
    'province_contentType':this.contentType,
    'province_publishDate':this.publishDate,
    'province_webview':this.webview,
    'province_image':this.image,
    'province_url':this.url,
    'province_file':this.file,
    'province_youtubeUrl':this.youtubeUrl,
    'province_timeago':this.timeago,
    'province_views':this.views,
    'province_comment':this.comment,
    'province_iconType':this.iconType,
    'province_cardType':this.cardType,
  };
}
import 'promotion.dart';

class Event{

  final String posterUrl;
  final int likeCount;
  final int shareCount;
  final int viewCount;
  final String title;
  final String type;
  final String dateTime;
  final String location;
  final List<Promotion> promotions;
  final String description;


  const Event({
    required this.posterUrl,
    required this.likeCount,
    required this.shareCount,
    required this.viewCount,
    required this.title,
    required this.type,
    required this.dateTime,
    required this.location,
    required this.promotions,
    required this.description
  });

}
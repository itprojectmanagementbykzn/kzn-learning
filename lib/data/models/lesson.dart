
import 'package:json_annotation/json_annotation.dart';

part 'lesson.g.dart';
@JsonSerializable(explicitToJson: true)
class Lesson {
  String url;
  int id;
  String name;

  @JsonKey(name: 'video_url')
  String videoUrl;

  @JsonKey(name: 'created_at')
  String createdAt;

  @JsonKey(name: 'modified_at')
  String modifiedAt;


  Lesson(
      {
        this.url,
        this.id,
        this.name,
        this.videoUrl,
        this.createdAt,
        this.modifiedAt
      }
  );

  factory Lesson.fromJson(Map<String, dynamic> json) => _$LessonFromJson(json);
  Map<String, dynamic> toJson() => _$LessonToJson(this);
}
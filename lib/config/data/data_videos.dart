import 'package:tiktokap/config/data/user_detail.dart';
import 'package:tiktokap/config/data/users.dart';
import 'package:tiktokap/config/data/videos.dart';

User User1 = User("user1", "images1.jpg");
User User2 = User("user2", "images2.jpg");
User User3 = User("user3", "images3.jpg");
User User4 = User("user4", "images4.jpg");

List<Video> videos = [
  Video("video1.mp4", "13k", "236", "356", User1),
  Video("video2.mp4", "13k", "236", "356", User2),
  Video("video3.mp4", "13k", "236", "356", User3),
  Video("video4.mp4", "13k", "236", "356", User4),
];

List<UserDetail> userdetails = [
  UserDetail(
    "Jacob West",
    "jacob_w",
    "tiktok.com@jacob_w",
    "",
    "",
    "",
  ),
  UserDetail(
    "Jacob West 2",
    "jacob_w",
    "tiktok.com@jacob_w",
    "",
    "",
    "",
  ),
];

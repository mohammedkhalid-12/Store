/* 
import 'package:forsat/application/classes/auth/user.dart';
import 'package:forsat/application/classes/forum/comment.dart';

class Question{
  final String question;
  final User createBy;
  List<Comment> comments;
Question.fromJson(Map <String, dynamic> jsonMap)
: question = jsonMap['question'] ??"",
createBy =User.fromJson(jsonMap['reatedBy']),
comments= _getComments(jsonMap['comments']);

  static _getComments(List<dynamic> comments) {

if(comments == null) return List<Comment> ();
return comments.map((comment) => Comment.formJson(comment)).toList();
  }
} */
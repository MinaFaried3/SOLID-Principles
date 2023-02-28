import '1-post_database.dart';
import '2-posts_classes.dart';

void main(List<String> args) {
  PostDatabase db = PostDatabase();

  List<String> posts = [];

  posts.add('ORIGINAL POST');
  posts.add('#TAG POST');
  posts.add('@MENTION POST');
  posts.add('http POST');
  Post postObj;

  for (var post in posts) {
    if (post.startsWith('#'))
      postObj = TagPost();
    else if (post.startsWith('@'))
      postObj = MentionPost();
    else if (post.startsWith('http'))
      postObj = LinkPost();
    else
      postObj = Post();

    String result = postObj.createPost(db, post);
    print(result);
  }
}

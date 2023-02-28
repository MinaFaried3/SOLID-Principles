import '1-post_database.dart';

class Post {
  String createPost(PostDatabase db, String post) {
    return db.addPost(post);
  }
}

class TagPost extends Post {
  @override
  String createPost(PostDatabase db, String post) {
    return db.addTagPost(post);
  }
}

class MentionPost extends Post {
  @override
  String createPost(PostDatabase db, String post) {
    return db.addMentionPost(post);
  }

  
}

class LinkPost extends Post {
  @override
  String createPost(PostDatabase db, String post) {
    return db.addLinkPost(post);
  }
}

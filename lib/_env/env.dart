// Defineing the Enviroment Constants here

class base_url {
  //USER AUTH DATA ENDPOINTS
  static String getmcq = "http://edutech.vass.co.in/api/v1";

  //SOCIAL API ENDPOINTS
  static const String createPost = '/social/post/create'; //POST
  //static const String getUserPost = '/social/posts'; //GET
  static const String createComment = '/social/comment/create'; //POST
  //static const String viewUserComment = '/social/comments'; //GET
  static const String createPostLike = '/social/like/create'; //POST
  //static const String getPostLikes = '/social/post_likes'; //GET
  static const String deletePostLikes = "/social/like/delete"; //DEL
  //static const String getCommentLikes = "/social/comment_like"; //GET
  static const String createFollower = "/social/follow/create"; //POST
  static const String deleteFollower = "/social/follow/delete"; //POST
}

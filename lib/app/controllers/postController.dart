// controllers/post_controller.dart


import 'package:get/get.dart';
import 'package:pas1_mobile_11pplg2_13/app/data/apiService.dart';
import 'package:pas1_mobile_11pplg2_13/app/models/premModel.dart';


class PostController extends GetxController {
  var isLoading = true.obs;
  var postList = <Team>[].obs;

  @override
  void onInit() {
    fetchPosts();
    super.onInit();
  }

  void fetchPosts() async {
    try {
      isLoading(true);
      var posts = await ApiService().fetchPosts();
      postList.assignAll(posts);
    } finally {
      isLoading(false);
    }
  }
}
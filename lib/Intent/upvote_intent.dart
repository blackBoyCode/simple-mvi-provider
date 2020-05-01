import 'package:flutter/foundation.dart';
import 'package:simplemviprovider/Model/upvote_model.dart';

//in order to use the Provider
//I need a class with methods that I would want to invoke
//when calling
class IntentFactory with ChangeNotifier {
  UpvoteModel upvoteModel = UpvoteModel(hearts: 0, thumbsUp: 0);

  addHeart() {
    upvoteModel.hearts++;
    notifyListeners();
  }

  addThumbsUp() {
    upvoteModel.thumbsUp++;
    notifyListeners();
  }
}

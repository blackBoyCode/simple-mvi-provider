import 'package:flutter/foundation.dart';
import 'package:simplemviprovider/Model/upvote_model.dart';

//in order to use the Provider
//I need a class with methods that I would want to invoke
//when calling
class IntentFactory with ChangeNotifier {
  //TODO : broken code here....to resolve later
  UpvoteModel upvoteModel = UpvoteModel();

  addHeart() {
    //upvoteModel.hearts++;
    notifyListeners();
  }

  addThumbsUp() {
    //upvoteModel.thumbsUp++;
    notifyListeners();
  }
}

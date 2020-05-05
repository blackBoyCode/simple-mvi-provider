import 'package:built_value/built_value.dart';

//TODO important detail:
// need to run this in a terminal to generate the field:
// "flutter packages pub run build_runner build" or "flutter packages pub run build_runner watch"
// to update live without doing build command

//TODO: this is required
part 'upvote_model.g.dart';

//TODO: I've used live template to generate starter snippet
abstract class UpvoteModel implements Built<UpvoteModel, UpvoteModelBuilder> {
  //TODO the field need to be a getter
  int get hearts;
  int get thumbsUp;

  UpvoteModel._();
  factory UpvoteModel([void Function(UpvoteModelBuilder) updates]) =
      _$UpvoteModel;
}

//class UpvoteModel {
//  int hearts;
//  int thumbsUp;
//
//  UpvoteModel({this.hearts, this.thumbsUp});
//}

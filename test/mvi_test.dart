import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:simplemviprovider/Model/upvote_model.dart';

main() {
  test('experimenting with test', () {
    String simpleWord = 'simple ';

    //test if simpleWord variable has simple in it
    expect(simpleWord, 'simple');
  });

  test('Build Value test', () {
    var upvoteModelTest = new UpvoteModel((b) =>
        b // not sure what is this syntax but it used for assign value for now
          ..thumbsUp = 0
          ..hearts = 5);

    print('number of heart: ${upvoteModelTest.hearts} ');
    print('number of thumbs: ${upvoteModelTest.thumbsUp} ');

    expect(upvoteModelTest.hearts, 5);
  });

  test('Immunibility', () {
    var upvoteModelOne = new UpvoteModel((b) => b
      ..thumbsUp = 0
      ..hearts = 0);

    var upvoteModelTwo = new UpvoteModel((b) => b
      ..thumbsUp = 0
      ..hearts = 0);

    bool isEqual = (upvoteModelOne == upvoteModelTwo);
    if (isEqual) {
      print('there are equal');
    } else {
      print('there are not equal');
    }

    expect(isEqual, true);
  });

  test('copy an instance', () {
    var upvoteModelTest = new UpvoteModel((b) =>
        b // not sure what is this syntax but it used for assign value for now
          ..thumbsUp = 0
          ..hearts = 5);
    print('current value thumbsUp ${upvoteModelTest.thumbsUp}');

    upvoteModelTest = upvoteModelTest.rebuild((a) => a
      ..hearts = 5
      ..thumbsUp = 7);

    print('updated value thumbsUp ${upvoteModelTest.thumbsUp}');

    expect(upvoteModelTest.hearts, 5);
  });
}

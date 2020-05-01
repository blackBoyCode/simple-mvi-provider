import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simplemviprovider/Intent/upvote_intent.dart';
import 'View/upvote.dart';

///provider need a create
void main() => runApp(
      //add the provider type
      ChangeNotifierProvider(
        create: (_) => IntentFactory(), // define the class
        child: UpVote(), //the child as the app
      ),
    );

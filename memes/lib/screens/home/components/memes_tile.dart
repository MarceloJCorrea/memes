import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:memes/models/memes.dart';
import 'package:memes/screens/memes/memes_sceen.dart';
import 'package:memes/stores/home_store.dart';

class MemesTile extends StatelessWidget {

  MemesTile(this.memes);

  final Memes memes;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GetIt.I<HomeStore>().incrementViews(memes);
        Navigator.of(context).push(MaterialPageRoute(builder: (_) => MemesScreen()));
      },
    );
  }
}

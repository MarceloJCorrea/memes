import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:memes/components/custom_drawer/custom_drawer.dart';
import 'package:memes/stores/home_store.dart';

class HomeScreen extends StatelessWidget {

  final HomeStore homeStore = GetIt.I<HomeStore>();

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        drawer: CustomDrawer(),
        appBar: AppBar(
          title: Text('Memes'),
          centerTitle: true,
      ),
        body: Column(
          children: [
            Expanded(
                child:
                Stack(children: [
                Observer(builder: (_){
                  if(homeStore.error != null)
                    return Padding(padding: EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.error,
                          color: Colors.white,
                          size: 100,
                        ),
                        const SizedBox(height: 8,),
                        Text(
                          'Ocorreu um erro!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                   );
                  return Container();
                },)
            ],)
            )
          ],
        ),
      );
  }
}

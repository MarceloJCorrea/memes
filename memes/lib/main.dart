import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:memes/screens/base/base_screen.dart';
import 'package:memes/stores/page_store.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';

void main() async {
  setupLocators();
  runApp(MyApp());
  
  Parse().initialize(
    'gecDmiVA136e6IxGnILYqik1mEz1KQlQrTBDXuLV', //appid
    'https://parseapi.back4app.com/', //serverURL
    clientKey: 'Hfv5QdgwsW10ZYirppjOtpGijJTqUfbKwxlM61Tv',
    autoSendSessionId: true, //manda a nossa identificação para o parse, não fica pedindo para informar quem que é a gente
    debug: true,
  );
}

void setupLocators(){
  GetIt.I.registerSingleton(PageStore());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Memes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BaseScreen(),
    );
  }
}



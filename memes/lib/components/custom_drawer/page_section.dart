import 'package:flutter/material.dart';
import 'package:memes/components/custom_drawer/page_tile.dart';
import 'package:get_it/get_it.dart';
import 'package:memes/stores/page_store.dart';

class PageSection extends StatelessWidget {

  final PageStore pageStore = GetIt.I<PageStore>();

  @override
  Widget build(BuildContext context) {
    /*Future<void> verifyLoginAndSetPage(int page) async {
      if (userManagerStore.isLoggedIn) {
        pageStore.setPage(page);
      } else {
        final result = await Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => LoginScreen()));
        if (result != null && result) pageStore.setPage(page);
      }
    }*/

    return Column(
      children: [
        PageTile(
          label: 'Memes',
          iconData: Icons.list,
          onTap: () {
            pageStore.setPage(0);
          },
          highlighted: pageStore.page == 0,
        ),
        PageTile(
          label: 'Inserir Meme',
          iconData: Icons.edit,
          onTap: () {
           /* verifyLoginAndSetPage(1);*/
          },
          highlighted: pageStore.page == 1,
        ),
        PageTile(
          label: 'Favoritos',
          iconData: Icons.favorite,
          onTap: () {
            /*verifyLoginAndSetPage(2);*/
          },
          highlighted: pageStore.page == 2,
        ),
        PageTile(
          label: 'Minha Conta',
          iconData: Icons.person,
          onTap: () {
           /* verifyLoginAndSetPage(3);*/
          },
          highlighted: pageStore.page == 3,
        )
      ],
    );
  }
}

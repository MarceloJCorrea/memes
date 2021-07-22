import 'package:memes/models/memes.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store {

  ObservableList<Memes> memesList = ObservableList<Memes>();

  @observable
  String search = '';

  @action
  void setSearch(String value) => search = value;

  @observable
  late String error;

  @action
  void setError(String value) => error = value;

  @observable
  bool loading = false;

  @action
  void setLoading(bool value) => loading = value;

  @observable
  int page = 0;

  @observable
  bool lastPage = false;

  @action
  void loadNextPage() => page++;

}


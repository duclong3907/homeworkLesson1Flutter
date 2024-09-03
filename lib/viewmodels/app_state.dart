import 'package:flutter/material.dart';
import '../models/word_pair_model.dart';
import 'package:english_words/english_words.dart';
class MyAppState extends ChangeNotifier {
  final WordPairModel wordPairModel = WordPairModel();

  GlobalKey? historyListKey;

  void getNext() {
    wordPairModel.getNext();
    var animatedList = historyListKey?.currentState as AnimatedListState?;
    animatedList?.insertItem(0);
    notifyListeners();
  }

  void toggleFavorite([WordPair? pair]) {
    wordPairModel.toggleFavorite(pair);
    notifyListeners();
  }

  void removeFavorite(WordPair pair) {
    wordPairModel.removeFavorite(pair);
    notifyListeners();
  }

  WordPair get current => wordPairModel.current;
  List<WordPair> get history => wordPairModel.history;
  List<WordPair> get favorites => wordPairModel.favorites;
}
import 'package:english_words/english_words.dart';

class WordPairModel {
  WordPair current = WordPair.random();
  List<WordPair> history = [];
  List<WordPair> favorites = [];
}
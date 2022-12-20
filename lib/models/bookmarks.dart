import 'package:expense/data/casestudy_list.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Caselist {
  int id;
  String title;
  String imgUrl;
  String overview;

  static final List<Caselist> _bookmarks = [];

  static const String bookmarkKey = 'bookmarks';

  Caselist(this.id, this.title, this.imgUrl, this.overview);

  static List<String> bookmarksIds = [];

  static void getBookmarkFromSharedPreferences() async {
    final preferences = await SharedPreferences.getInstance();

    if (preferences.containsKey(bookmarkKey)) {
      bookmarksIds = preferences.getStringList(bookmarkKey)!;

      for (String id in bookmarksIds) {
        _bookmarks.add(
            caselists.firstWhere((caselist) => caselist.id.toString() == id));
      }
    }
  }

  static void addBookmark(Caselist cl) async {
    final preferences = await SharedPreferences.getInstance();
    bookmarksIds.add(cl.id.toString());
    preferences.setStringList(bookmarkKey, bookmarksIds);
    _bookmarks.add(cl);
  }

  static bool checkBookmark(Caselist cl) {
    return _bookmarks.contains(cl);
  }

  static List<Caselist> getBookmark() {
    return _bookmarks;
  }
}

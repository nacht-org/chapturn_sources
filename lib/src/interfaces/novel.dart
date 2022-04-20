import 'package:chapturn_sources/src/models/models.dart';

abstract class ParseNovel {
  /// Parse the novel by following the url
  ///
  /// Does not check if the url matches this crawler
  Future<Novel> parseNovel(String url);

  /// Parse the chapter and populate the content field
  ///
  /// [Chapter] must have the [url] field populated
  Future<void> parseChapter(Chapter chapter);
}

abstract class ParseSearch {
  /// Search the website for novels with the given [query]
  Future<List<Novel>> search(String query, int page);
}

abstract class ParseLogin {
  /// Login to the website with given [username] and [password]
  /// and persist the session
  Future<void> login(String username, String password);
}

abstract class ParsePopular {
  /// Acquire the most popular novels from the source.
  Future<List<Novel>> parsePopular(int page);
}

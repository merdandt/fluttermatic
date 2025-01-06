import 'dart:math';

import 'package:flutter/foundation.dart';

@immutable
final class FuzzySearch {
  const FuzzySearch({
    required this.potentialMatches,
    this.maxTypos = 5,
    this.damerauLevenshteinDistance = true,
  });

  /// Initialize with potential matches [potentialMatches] to search against
  final List<String> potentialMatches;

  /// Determine the max allowed typos based on the query length
  /// *** Example heuristic: maxTypos = query.length / 5 ***
  ///
  final int maxTypos;

  /// Damerau–Levenshtein distance does.
  /// It is a more complex algorithm.
  ///
  /// **https://en.m.wikipedia.org/wiki/Damerau%E2%80%93Levenshtein_distance**
  final bool damerauLevenshteinDistance;

  int _damerauLevenshteinDistance(final String s, final String t) {
    if (s == t) {
      return 0;
    }
    if (s.isEmpty) {
      return t.length;
    }
    if (t.isEmpty) {
      return s.length;
    }

    List<int> v0 = List.filled(t.length + 1, 0);
    List<int> v1 = List.filled(t.length + 1, 0);
    List<int> v2 = List.filled(t.length + 1, 0); // For previous row

    for (int i = 0; i <= t.length; i++) {
      v0[i] = i;
    }

    for (int i = 0; i < s.length; i++) {
      v1[0] = i + 1;

      for (int j = 0; j < t.length; j++) {
        final int cost = s[i] == t[j] ? 0 : 1;
        v1[j + 1] = [
          v1[j] + 1, // deletion
          v0[j + 1] + 1, // insertion
          v0[j] + cost, // substitution
        ].reduce((final a, final b) => a < b ? a : b);

        // Check for transposition
        if (i > 0 && j > 0 && s[i] == t[j - 1] && s[i - 1] == t[j]) {
          v1[j + 1] = min(v1[j + 1], v2[j - 1] + cost); // transposition
        }
      }

      final List<int> temp = v2;
      v2 = v0;
      v0 = v1;
      v1 = temp;
    }

    return v0[t.length];
  }

  int _levenshteinDistance(final String s, final String t) {
    if (s == t) {
      return 0;
    }
    if (s.isEmpty) {
      return t.length;
    }
    if (t.isEmpty) {
      return s.length;
    }

    List<int> v0 = List.filled(t.length + 1, 0);
    List<int> v1 = List.filled(t.length + 1, 0);

    for (int i = 0; i <= t.length; i++) {
      v0[i] = i;
    }

    for (int i = 0; i < s.length; i++) {
      v1[0] = i + 1;

      for (int j = 0; j < t.length; j++) {
        final int cost = s[i] == t[j] ? 0 : 1;
        v1[j + 1] = [
          v1[j] + 1,
          v0[j + 1] + 1,
          v0[j] + cost,
        ].reduce((final a, final b) => a < b ? a : b);
      }

      final List<int> temp = v0;
      v0 = v1;
      v1 = temp;
    }

    return v0[t.length];
  }

  String _removeDiacritics(final String str) {
    String normalizedStr = str;
    const withDia = 'ÁáÉéÍíÓóÚúÜüÑñÇçÀàÈèÌìÒòÙùÂâÊêÎîÔôÛûÄäËëÏïÖöÜüŸÿÝý';
    const withoutDia = 'AaEeIiOoUuUuNnCcAaEeIiOoUuAaEeIiOoUuAaEeIiOoUuYyYy';

    for (int i = 0; i < withDia.length; i++) {
      normalizedStr = normalizedStr.replaceAll(withDia[i], withoutDia[i]);
    }

    return normalizedStr;
  }

  // Corrected method to compute Levenshtein distance in another isolate
  Future<int> _distanceCompute(
    final StringPair strings,
  ) async =>
      compute(_calculateLevenshteinDistanceWrapper, strings);

  // Wrapper function that matches the expected signature for `compute`
  int _calculateLevenshteinDistanceWrapper(final StringPair strings) {
    final String first = _removeDiacritics(strings.first);
    final String second = _removeDiacritics(strings.second);

    return damerauLevenshteinDistance
        ? _damerauLevenshteinDistance(first, second)
        : _levenshteinDistance(first, second);
  }

  // Perform a fuzzy search, offloading computation to another isolate
  Future<List<SearchResult>> search(
    final String query,
  ) async {
    final List<SearchResult> results = [];

    for (final String match in potentialMatches) {
      // Compute distance based on the selected algorithm
      final int distance = await _distanceCompute(StringPair(query, match));

      // Adjust the criteria to include substring matches as valid results
      if (match.toLowerCase().contains(query.toLowerCase()) ||
          distance <= maxTypos) {
        results.add(SearchResult(match, distance));
      }
    }

    // Sort results based on the distance
    results.sort((final a, final b) => a.distance.compareTo(b.distance));

    return results;
  }

  List<String> regexSearch(final String query) {
    final normalizedQuery = _removeDiacritics(query).toLowerCase();
    final escapedQuery = RegExp.escape(normalizedQuery);
    final pattern = RegExp(escapedQuery, caseSensitive: false);

    return potentialMatches.where((final match) {
      final normalizedMatch = _removeDiacritics(match).toLowerCase();

      return pattern.hasMatch(normalizedMatch);
    }).toList();
  }

  List<String> simpleFuzzySearch(
    final String query,
  ) {
    final normalizedQuery = query.toLowerCase();
    final filteredMatches = potentialMatches
        .where((final match) => match.toLowerCase().contains(normalizedQuery))
        .toList();

    return filteredMatches;
  }

  @override
  String toString() =>
      'FuzzySearch{potentialMatches: $potentialMatches, maxTypos: $maxTypos, '
      'damerauLevenshteinDistance: $damerauLevenshteinDistance}';

  @override
  int get hashCode =>
      potentialMatches.hashCode ^
      maxTypos.hashCode ^
      damerauLevenshteinDistance.hashCode;

  @override
  bool operator ==(final Object other) {
    if (identical(this, other)) return true;

    return other is FuzzySearch &&
        listEquals(other.potentialMatches, potentialMatches) &&
        other.maxTypos == maxTypos &&
        other.damerauLevenshteinDistance == damerauLevenshteinDistance;
  }
}

class StringPair {
  StringPair(this.first, this.second);
  final String first;
  final String second;
}

class SearchResult {
  SearchResult(this.match, this.distance);
  final String match;
  final int distance;
}

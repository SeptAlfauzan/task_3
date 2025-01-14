enum SortType { ALL, FINISHED, UNFINISHED }

SortType? stringToSortType(String value) {
  try {
    return SortType.values.firstWhere(
      (e) => e.toString().split('.').last == value.toUpperCase(),
    );
  } catch (e) {
    return null;
  }
}

/// Defines the status of the novel
enum NovelStatus {
  /// The novel is being updated regularly
  ongoing,

  /// The updates have stopped until a certain
  /// (determinate or indeterminate) time.
  hiatus,

  /// The novel has been completed.
  completed,

  /// Parts of the novel has been removed by author.
  /// The most common cause is third-party exclusivity contracts.
  stub,

  /// The novel status is unknown.
  unknown,
}

/// Acquire the novel status from a suitable string.
///
/// The matching strings are listed below (case-insensitive):
///
/// - [NovelStatus.ongoing] : "ongoing"
/// - [NovelStatus.hiatus] : "hiatus"
/// - [NovelStatus.completed] : "completed"
///
/// If none of the above matches [NovelStatus.unknown]
NovelStatus parseNovelStatus(String? value) {
  switch (value?.toLowerCase()) {
    case 'ongoing':
      return NovelStatus.ongoing;
    case 'hiatus':
      return NovelStatus.hiatus;
    case 'stub':
      return NovelStatus.stub;
    case 'completed':
      return NovelStatus.completed;
    default:
      return NovelStatus.unknown;
  }
}

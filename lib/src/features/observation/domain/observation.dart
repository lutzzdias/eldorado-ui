enum ObservationState {
  pending,
  approved,
  rejected,
}

class Observation {
  String requester;
  DateTime date;
  String content;
  ObservationState state;

  Observation({
    required this.requester,
    required this.date,
    required this.content,
    this.state = ObservationState.pending,
  });
}

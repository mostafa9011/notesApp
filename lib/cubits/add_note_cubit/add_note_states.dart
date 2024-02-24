abstract class AddNoteStates {}

class AddNoteInitState extends AddNoteStates {}

class IsLoadingState extends AddNoteStates {}

class SuccessState extends AddNoteStates {}

class FailureState extends AddNoteStates {
  final String msg;

  FailureState({required this.msg});
}

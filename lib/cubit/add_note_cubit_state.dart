part of 'add_note_cubit_cubit.dart';

@immutable
abstract class AddNoteCubitState {} //sealed

final class AddNoteCubitInitial extends AddNoteCubitState {}

final class AddNoteCubitLoading extends AddNoteCubitState {}

final class AddNoteCubitSuccess extends AddNoteCubitState {}

final class AddNoteCubitFailure extends AddNoteCubitState 
{
  final String errMessage;
  AddNoteCubitFailure(this.errMessage);
}
//add note network failure state or any state could added

part of 'sepha_cubit.dart';

@immutable
sealed class SephaState {}

final class SephaInitial extends SephaState {}
final class UpdateText extends SephaState {}
final class UpdateCounter extends SephaState {}
final class ResetCounter extends SephaState {}

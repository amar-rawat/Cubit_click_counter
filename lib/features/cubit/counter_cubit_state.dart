import 'package:equatable/equatable.dart';

class CounterCubitStateModel extends Equatable {
  final int clickCount;

  const CounterCubitStateModel({this.clickCount = 0});

  CounterCubitStateModel countGiver(int? clickCount) {
    return CounterCubitStateModel(
      clickCount: clickCount ?? this.clickCount,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [clickCount];
}

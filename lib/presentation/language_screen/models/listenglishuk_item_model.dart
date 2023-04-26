import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class ListenglishukItemModel extends Equatable {
  ListenglishukItemModel({this.isCheckbox = false, this.id});

  bool isCheckbox;

  String? id;

  ListenglishukItemModel copyWith({bool? isCheckbox, String? id}) {
    return ListenglishukItemModel(
      isCheckbox: isCheckbox ?? this.isCheckbox,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [isCheckbox, id];
}

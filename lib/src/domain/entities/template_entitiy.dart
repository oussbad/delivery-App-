import 'package:equatable/equatable.dart';

class Template extends Equatable {
  final int id;
  final String name;

  const Template({
    required this.id,
    required this.name,
  });

  factory Template.init() => const Template(
        id: 0,
        name: '',
      );

  @override
  List<Object> get props => <Object>[
        id,
        name,
      ];
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

// usar anotacion @freezed
@freezed
class User with _$User {
  const factory User({
    required String name,
    @Assert("age > 18") required int age, // Para validar
    @Default('Unknown') String email,
    @Default([]) List<String> hobbies, // Valor por defecto: lista vacía
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

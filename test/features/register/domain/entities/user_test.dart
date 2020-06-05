
import 'package:app/features/register/data/models/user_model.dart';
import 'package:app/features/register/domain/entitties/user.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('should be a subclass of user entity', () async {
    // assert
    final userModel =
        UserModel(email: "douglas@gmail.com", displayName: "password");
    expect(userModel, isA<User>());
  });
  test('should map UserModel to User ', () async {
    // arrange
    final userModel =
        UserModel(email: "douglas@gmail.com", displayName: "douglas alipio");
    final user = User('douglas@gmail.com', 'douglas alipio', 'http://mypicture.com');
    // act
    final expected = userModel.mapper;
    // assert
    expect(expected, user);
  });
}
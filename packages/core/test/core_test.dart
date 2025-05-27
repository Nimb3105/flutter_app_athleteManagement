// packages/core/test/core_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:core/core.dart'; // Import barrel file từ core

// Import file mock được tạo bởi mockito
import 'core_test.mocks.dart';

@GenerateMocks([UserRepository])
void main() {
  group('Core Tests', () {
    // Kiểm thử UserBloc
    group('UserBloc', () {
      late UserBloc userBloc;
      late MockUserRepository mockUserRepository;

      setUp(() {
        mockUserRepository = MockUserRepository();
        userBloc = UserBloc(userRepository: mockUserRepository);
      });

      tearDown(() {
        userBloc.close();
      });

      test('initial state is User_Initial', () {
        expect(userBloc.state, equals(const User_Initial()));
      });

      blocTest<UserBloc, UserState>(
        'emits [User_Loading, LoadedUser] when GetUserById succeeds',
        setUp: () {
          when(mockUserRepository.getUserById(any)).thenAnswer(
            (_) async => User(
              id: '1',
              gender: 'nam',
              fullName: 'phungthientai',
              password: '123',
              email: 'tai@gmail.com',
              phoneNumber: '123546789',
              dateOfBirth: DateTime(2025, 5, 23, 12, 23, 13),
              role: 'admin',
              status: 'active',
              createdAt: DateTime(2025, 5, 23, 12, 23, 13),
              updatedAt: DateTime(2025, 5, 23, 12, 23, 13),
            ),
          );
        },
        build: () => userBloc,
        act: (bloc) => bloc.add(GetUserById('1')),
        expect:
            () => [
              const User_Loading(),
              LoadedUser(
                User(
                  id: '1',
                  gender: 'nam',
                  fullName: 'phungthientai',
                  password: '123',
                  email: 'tai@gmail.com',
                  phoneNumber: '123546789',
                  dateOfBirth: DateTime(2025, 5, 23, 12, 23, 13),
                  role: 'admin',
                  status: 'active',
                  createdAt: DateTime(2025, 5, 23, 12, 23, 13),
                  updatedAt: DateTime(2025, 5, 23, 12, 23, 13),
                ),
              ),
            ],
      );

      blocTest<UserBloc, UserState>(
        'emits [User_Loading, User_Error] when GetUserById fails',
        setUp: () {
          when(
            mockUserRepository.getUserById(any),
          ).thenThrow(Exception('Failed to fetch user'));
        },
        build: () => userBloc,
        act: (bloc) => bloc.add(GetUserById('1')),
        expect:
            () => [
              const User_Loading(),
              const User_Error('Exception: Failed to fetch user'),
            ],
      );

      blocTest<UserBloc, UserState>(
        'emits [User_Loading, LoggedIn] when Login succeeds',
        setUp: () {
          when(
            mockUserRepository.login(any, any),
          ).thenAnswer((_) async => 'mock_token');
        },
        build: () => userBloc,
        act: (bloc) => bloc.add(Login('tai@gmail.com', '123')),
        expect: () => [const User_Loading(), const LoggedIn('mock_token')],
      );

      blocTest<UserBloc, UserState>(
        'emits [User_Loading, User_Error] when Login fails',
        setUp: () {
          when(
            mockUserRepository.login(any, any),
          ).thenThrow(Exception('Invalid credentials'));
        },
        build: () => userBloc,
        act: (bloc) => bloc.add(Login('tai@gmail.com', '123')),
        expect:
            () => [
              const User_Loading(),
              const User_Error('Exception: Invalid credentials'),
            ],
      );
    });

    // Kiểm thử model User
    group('User Model', () {
      test('User can be created with correct properties', () {
        final user = User(
          id: '1',
          gender: 'nam',
          fullName: 'phungthientai',
          password: '123',
          email: 'tai@gmail.com',
          phoneNumber: '123546789',
          dateOfBirth: DateTime(2025, 5, 23, 12, 23, 13),
          role: 'admin',
          status: 'active',
          createdAt: DateTime(2025, 5, 23, 12, 23, 13),
          updatedAt: DateTime(2025, 5, 23, 12, 23, 13),
        );
        expect(user.id, '1');
        expect(user.fullName, 'phungthientai'); // Sửa lỗi từ 'Test User'
        expect(user.email, 'tai@gmail.com');
      });

      test('User equality works correctly', () {
        final date = DateTime(2025, 5, 23);
        final user1 = User(
          id: '1',
          gender: 'nam',
          fullName: 'phungthientai',
          password: '123',
          email: 'tai@gmail.com',
          phoneNumber: '123546789',
          dateOfBirth: date,
          role: 'admin',
          status: 'active',
          createdAt: date,
          updatedAt: date,
        );
        final user2 = User(
          id: '1',
          gender: 'nam',
          fullName: 'phungthientai',
          password: '123',
          email: 'tai@gmail.com',
          phoneNumber: '123546789',
          dateOfBirth: date,
          role: 'admin',
          status: 'active',
          createdAt: date,
          updatedAt: date,
        );
        expect(
          user1,
          equals(user2),
        ); // Hai user có cùng thuộc tính nên bằng nhau
      });
    });
  });
}

import 'profile.dart';
import 'profile_repository.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  @override
  Future<Profile> getProfile() async {
    await Future.delayed(const Duration(seconds: 5));
    return const Profile(
      name: 'israel',
      email: 'israel@gmail.com',
      bio: 'Flutter mobile engineer building production software',
    );
  }
}

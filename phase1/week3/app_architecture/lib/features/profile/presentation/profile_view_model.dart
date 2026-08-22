import '../data/profile_repository.dart';
import '../data/profile.dart';
import 'package:flutter/foundation.dart';


class ProfileViewModel extends ChangeNotifier{

  final ProfileRepository _repository;

  Profile? _profile;

  ProfileViewModel({required ProfileRepository repository}) : _repository = repository;

  Profile? get profile => _profile;

  Future<void> loadProfile() async{
     _profile = await _repository.getProfile();
     notifyListeners();
  }
}


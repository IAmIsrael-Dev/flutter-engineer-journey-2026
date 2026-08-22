import 'package:app_architecture/features/profile/data/profile_repository_impl.dart';
import 'package:flutter/material.dart';
import 'profile_view_model.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late final ProfileViewModel viewModel;

  @override
  void initState() {
    super.initState();

    viewModel = ProfileViewModel(repository: ProfileRepositoryImpl());

    viewModel.loadProfile();
  }

  void loadData() {
    viewModel = ProfileViewModel(repository: ProfileRepositoryImpl());
    viewModel.loadProfile();
  }

  @override
  void dispose() {
    viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: loadData,
        child: Icon(Icons.refresh),
      ),
      appBar: AppBar(title: const Text('Profile')),
      body: ListenableBuilder(
        listenable: viewModel,
        builder: (context, child) {
          final profile = viewModel.profile;

          if (profile == null) {
            return const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(strokeWidth: 10),
                  SizedBox(height: 12),
                  Text('Loading profile data'),
                ],
              ),
            );
          }

          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  profile.name,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                Text(profile.email),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text(profile.bio, textAlign: TextAlign.center),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

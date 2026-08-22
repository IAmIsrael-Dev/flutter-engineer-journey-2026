import 'package:flutter/material.dart';
import 'package:app_architecture/features/profile/presentation/profile_screen.dart';

// import 'package:app_architecture/features/profile/presentation/profile_view_model.dart';

// import './features/profile/data/profile_repository_impl.dart';

void main() {
  // final repository = ProfileRepositoryImpl();

  // final viewModel = ProfileViewModel(repository: repository);

  // await viewModel.loadProfile();

  // print(viewModel.profile?.name);
  // print(viewModel.profile?.email);
  // print(viewModel.profile?.bio);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Test Profile Screen',
      home: ProfileScreen(),
    );
  }
}

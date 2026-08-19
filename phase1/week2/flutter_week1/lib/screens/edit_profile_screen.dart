import 'package:flutter/material.dart';
import 'package:flutter_week1/models/profile_data.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final bioController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    bioController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context, 'Nothing to show');
          },
          icon: Icon(Icons.arrow_back),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
        title: const Text('Edit Profile Screen'),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue, width: 2),
            borderRadius: BorderRadius.circular(24),
          ),
          margin: EdgeInsets.all(24),
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),

              SizedBox(height: 14),

              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'please enter your email';
                  }

                  if (!value.contains('@')) {
                    return 'please enter a valid email';
                  }
                  return null;
                },
              ),

              SizedBox(height: 14),

              TextFormField(
                controller: bioController,
                maxLines: 4,
                decoration: InputDecoration(
                  labelText: 'Bio',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'please enter your bio';
                  }
                  if (value.trim().length < 20) {
                    return 'please enter your bio';
                  }
                  return null;
                },
              ),

              SizedBox(height: 14),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 20,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        final profileInfo = ProfileData(
                          name: nameController.text.trim(),
                          email: emailController.text.trim(),
                          bio: bioController.text.trim(),
                        );

                        Navigator.pop(context, profileInfo);

                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Form is valid')),
                        );
                        
                        print('Form is valid');
                        // Navigator.pop(context, 'Profile updated');
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Form is not valid')),
                        );
                        print('Form is not valid');
                      }
                    },
                    child: Text('Save form'),
                  ),

                  ElevatedButton(
                    onPressed: () {
                      nameController.clear();
                      emailController.clear();
                      bioController.clear();
                    },
                    child: Text('Clear text'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

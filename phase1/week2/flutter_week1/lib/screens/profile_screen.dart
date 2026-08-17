import 'package:flutter/material.dart';
import '../widgets/portfolio_button.dart';
import '../widgets/profile_bio.dart';
import '../widgets/profile_header.dart';
import '../widgets/profile_info_row.dart';
import '../widgets/social_link_row.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isFollowing = false;
  bool isAvailable = true;

  void toggleFollowing() {
    setState(() => isFollowing = !isFollowing);
  }

  void toggleAvailability() {
    setState(() => isAvailable = !isAvailable);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7FAFC),
      appBar: AppBar(
        title: const Text('My Flutter Journey'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white24,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return Center(
              child: Container(
                // padding:EdgeInsets.fromLTRB(0, 0, 0, 30),
                margin: EdgeInsets.fromLTRB(0, 30, 0, 30),
                width: 340,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Color(0xFFEAF3FF),
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 16,
                      offset: Offset(0, 8),
                    ),
                  ],
                ),
                child: SafeArea(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const ProfileHeader(),

                        SizedBox(height: 24),

                        Divider(color: Colors.blueGrey),

                        SizedBox(height: 16),

                        const ProfileBio(
                          bio:
                              'I am building my career as a Flutter mobile engineer, '
                              'with a focus on writing clean, maintainable and '
                              'production-ready applications.',
                        ),

                        SizedBox(height: 24),

                        const ProfileInfoRow(
                          icon: Icons.email,
                          label: 'Email',
                          value: 'Israel@example',
                        ),

                        const SizedBox(height: 14),

                        const ProfileInfoRow(
                          icon: Icons.phone,
                          label: 'Phonenumber',
                          value: '+234 000 000 000',
                        ),

                        const SizedBox(height: 14),

                        const ProfileInfoRow(
                          icon: Icons.location_on,
                          label: 'Location',
                          value: 'Lagos, Nigeria',
                        ),

                        const SizedBox(height: 14),

                        const ProfileInfoRow(
                          icon: Icons.code,
                          label: 'Portfolio link',
                          value: 'github.com/israel-dev',
                        ),

                        SizedBox(height: 14),

                        const SocialLinkRow(
                          icon: Icons.facebook,
                          platform: 'Facebook',
                          username: '@israel.facebook',
                        ),

                        SizedBox(height: 14),

                        const SocialLinkRow(
                          icon: Icons.message,
                          platform: 'WhatSapp',
                          username: '@israel.whasapp',
                        ),

                        SizedBox(height: 14),

                        PortfolioButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Portfolio coming soon!')),
                            );
                          },
                        ),

                        SizedBox(height: 14),

                        SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.blue,
                              side: BorderSide(color: Colors.blue, width: 2),
                            ),
                            onPressed: toggleFollowing,
                            child: Text(
                              isFollowing ? 'Following ✓' : 'Follow now',
                            ),
                          ),
                        ),

                        SizedBox(height: 14),

                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white,
                            side: BorderSide(color: Colors.yellow, width: 2),
                          ),
                          onPressed: toggleAvailability,
                          child: Text(
                            isAvailable
                                ? 'Available for freelance work'
                                : 'Currently unavailable',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          } else {
            return Center(
              child: Container(
                margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Color(0xFFEAF3FF),
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 16,
                      offset: Offset(0, 8),
                    ),
                  ],
                ),
                width: double.infinity,
                child: Row(
                  spacing: 12,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.indigo,
                          radius: 52,
                          child: Text(
                            'AI',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(width: 12),

                    SingleChildScrollView(
                      padding: EdgeInsets.all(20),
                      child: SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Israel',
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            SizedBox(height: 8),

                            Text(
                              'Banker ➜ Flutter Engineer',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 28,
                                color: Colors.black87,
                              ),
                            ),
                            SizedBox(height: 24),

                            Divider(color: Colors.blueGrey),

                            SizedBox(height: 16),
                            Text(
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                height: 1.5,
                                color: Colors.black87,
                              ),
                              'Passionate about building finance-focused mobile apps with Flutter. Currently transitioning from banking into professional mobile engineering.',
                            ),

                            SizedBox(height: 24),

                            Row(
                              children: const [
                                Icon(Icons.email, color: Colors.blue),
                                SizedBox(width: 12),
                                Expanded(
                                  child: Text(
                                    'israel.this.is.a.very.long.email.address.that.might.not.fit@example.com',
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 14),

                            Row(
                              children: [
                                const Icon(Icons.phone, color: Colors.blue),
                                const SizedBox(width: 12),
                                Text(
                                  '+234 800 000 0000',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                            SizedBox(height: 14),

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Icon(Icons.location_on, color: Colors.blue),
                                SizedBox(width: 12),
                                Expanded(
                                  child: Text(
                                    // overflow: TextOverflow.ellipsis,
                                    'israel.this.is.a.very.long.email.address.that.might.not.fit@example.com',
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 14),

                            Row(
                              children: const [
                                Icon(Icons.code, color: Colors.blue),
                                SizedBox(width: 12),
                                Text(
                                  'github.com/israel-dev',
                                  // overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),

                            SizedBox(height: 14),

                            SizedBox(
                              width: double.infinity,
                              child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  foregroundColor: Colors.blue,
                                  side: BorderSide(
                                    color: Colors.blue,
                                    width: 2,
                                  ),
                                ),
                                onPressed: toggleFollowing,
                                child: Text(
                                  isFollowing ? 'Following ✓' : 'Follow now',
                                  // style: TextStyle(color: Colors.blue),
                                ),
                              ),
                            ),

                            SizedBox(height: 14),

                            FractionallySizedBox(
                              widthFactor: 1,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  foregroundColor: Colors.white,
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 14,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                                onPressed: () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                        'Portfolio feature coming soon!',
                                      ),
                                    ),
                                  );
                                },

                                child: const Text(
                                  'View Portfolio',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ),
                            SizedBox(height: 14),

                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                foregroundColor: Colors.white,
                                side: BorderSide(
                                  color: Colors.yellow,
                                  width: 2,
                                ),
                              ),
                              onPressed: toggleAvailability,
                              child: Text(
                                isAvailable
                                    ? 'Available for freelance work'
                                    : 'Currently unavailable',
                              ),
                            ),

                            // Row(
                            //   children: [
                            //     const Text('Israel'),
                            //     Spacer(),
                            //     const Icon(Icons.settings),
                            //   ],
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}

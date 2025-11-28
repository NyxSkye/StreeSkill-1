import 'package:flutter/material.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final posts = [
      {
        'author': 'Anjali Mehta',
        'time': '2 hours ago',
        'content': 'Just completed my Digital Marketing course! The SEO module was incredibly helpful. 🎉',
        'likes': 45,
        'comments': 12,
      },
      {
        'author': 'Kavita Singh',
        'time': '5 hours ago',
        'content': 'Looking for study partners for the Web Development course. Anyone interested?',
        'likes': 28,
        'comments': 8,
      },
      {
        'author': 'Meera Patel',
        'time': '1 day ago',
        'content': 'The Financial Planning course changed my life! Now I\'m confidently managing my investments.',
        'likes': 67,
        'comments': 15,
      },
      {
        'author': 'Riya Desai',
        'time': '2 days ago',
        'content': 'Sharing my first design project from the Graphic Design course. Feedback welcome! 🎨',
        'likes': 89,
        'comments': 23,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Community'),
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          // Stats Banner
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Theme.of(context).primaryColor, const Color(0xFF9C27B0)],
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildCommunityStat('12.5K', 'Members'),
                _buildCommunityStat('450', 'Active Today'),
                _buildCommunityStat('2.3K', 'Posts'),
              ],
            ),
          ),

          // Posts Feed
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(15),
              itemCount: posts.length,
              itemBuilder: (context, index) {
                final post = posts[index];
                return Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Author Header
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Theme.of(context).primaryColor,
                            child: Text(
                              post['author'].toString()[0],
                              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  post['author'].toString(),
                                  style: const TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  post['time'].toString(),
                                  style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.more_vert),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),

                      // Post Content
                      Text(
                        post['content'].toString(),
                        style: const TextStyle(fontSize: 14, height: 1.5),
                      ),
                      const SizedBox(height: 15),

                      // Interaction Buttons
                      Row(
                        children: [
                          _buildInteractionButton(
                            Icons.favorite_border,
                            '${post['likes']}',
                            Colors.red,
                          ),
                          const SizedBox(width: 20),
                          _buildInteractionButton(
                            Icons.comment_outlined,
                            '${post['comments']}',
                            Colors.blue,
                          ),
                          const SizedBox(width: 20),
                          _buildInteractionButton(
                            Icons.share_outlined,
                            'Share',
                            Colors.green,
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Create new post')),
          );
        },
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }

  Widget _buildCommunityStat(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          label,
          style: const TextStyle(color: Colors.white70, fontSize: 12),
        ),
      ],
    );
  }

  Widget _buildInteractionButton(IconData icon, String label, Color color) {
    return Row(
      children: [
        Icon(icon, size: 20, color: color),
        const SizedBox(width: 5),
        Text(
          label,
          style: TextStyle(fontSize: 12, color: Colors.grey[700]),
        ),
      ],
    );
  }
}

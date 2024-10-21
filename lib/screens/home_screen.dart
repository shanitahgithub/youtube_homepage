import 'package:flutter/material.dart';
import '../widgets/app_bar.dart';
import '../widgets/bottom_navigation_bar.dart';
import '../widgets/video_card.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  // Categories to display in the horizontal list
  final List<String> categories = [
    'All',
    'New to you',
    'Music',
    'African Music',
    'Nollywood',
    'Mixes',
    'Live',
    'Playlists',
  ];

  // Sample video data to display in the list
  final List<Map<String, String>> videoData = [
    {
      'title': 'Neyanziza',
      'channel': 'Music Africa',
      'views': '500K views',
      'thumbnail':
          'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSCyH8J0f98pbgbHRXfBpviRyODZpgnT2ODbYK_5xKqN5ZbuCKd',
      'duration': '3:15',
    },
    {
      'title': 'Ogechi',
      'channel': 'Live Events',
      'views': '1M views',
      'thumbnail':
          'https://i1.sndcdn.com/avatars-29rrj8yjxGO30V9r-FCxepg-t1080x1080.jpg',
      'duration': '1:02:30',
    },
    {
      'title': 'Sibyamukisa',
      'channel': 'Ugandan TV',
      'views': '800K views',
      'thumbnail':
          'https://i0.wp.com/mbu.ug/wp-content/uploads/2022/06/Rema-2-edited.jpg?fit=768%2C480&ssl=1',
      'duration': '2:45',
    },
  ];

  // URLs for the shorts grid images
  final List<String> shortsImages = [
    'https://imgcdn.stablediffusionweb.com/2024/4/9/d3eac88c-fae6-4031-8fdd-e054b9819611.jpg',
    'https://www.ugabox.com/images/business/directory/fashion/fashion-fest/African-Kitenge-Wear-Fashion-Design-35.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgTNwa4LTKUSgxrs1AZWC1Hp0VkqDKCkt0Qw&s',
    'https://www.travelandleisure.com/thmb/rYQ-zxRTAe2z8ERzjE-UbgF6Obc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/amazons-best-new-fashion-arrivals-this-month-tout-7410d8059f9242b7b06d398d561b9884.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(), // Custom App Bar Widget
      bottomNavigationBar: const CustomBottomNavigationBar(), // Bottom Nav Bar
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildCategorySection(),
            _buildVideoList(),
            _buildShortsGrid(),
          ],
        ),
      ),
    );
  }

  // Builds the horizontal scrollable category list
  Widget _buildCategorySection() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: categories
              .map((category) => _buildCategoryChip(category))
              .toList(),
        ),
      ),
    );
  }

  // Creates a Chip widget for each category
  Widget _buildCategoryChip(String label) {
    Color backgroundColor;
    Color textColor;

    // Check if the label is 'All' to set specific colors
    if (label == 'All') {
      backgroundColor = Colors.black;
      textColor = Colors.white; // White text for better visibility
    } else {
      backgroundColor = Colors.white; // Default background for other categories
      textColor = Colors.black; // Default text color
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Chip(
        label: Text(
          label,
          style:
              TextStyle(color: textColor), // Set text color based on category
        ),
        backgroundColor:
            backgroundColor, // Set background color based on category
      ),
    );
  }

  // Builds the list of videos with thumbnails and details
  Widget _buildVideoList() {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: videoData.length,
      itemBuilder: (context, index) {
        final video = videoData[index];
        return VideoCard(
          title: video['title']!,
          channel: video['channel']!,
          views: video['views']!,
          thumbnailUrl: video['thumbnail']!,
          duration: video['duration']!,
        );
      },
    );
  }

  // Builds the grid of short videos
  Widget _buildShortsGrid() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Shorts',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 8),
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
            ),
            itemCount: shortsImages.length,
            itemBuilder: (context, index) {
              return Image.network(
                shortsImages[index],
                fit: BoxFit.cover,
              );
            },
          ),
        ],
      ),
    );
  }
}

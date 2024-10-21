// // import 'package:flutter/material.dart';

// // class VideoCard extends StatelessWidget {
// //   const VideoCard({Key? key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return Padding(
// //       padding: const EdgeInsets.all(8.0),
// //       child: Row(
// //         children: [
// //           Container(
// //             width: 150,
// //             height: 90,
// //             color: Colors.grey[800],
// //           ),
// //           const SizedBox(width: 8),
// //           Expanded(
// //             child: Column(
// //               crossAxisAlignment: CrossAxisAlignment.start,
// //               children: const [
// //                 Text(
// //                   'Video Title',
// //                   maxLines: 2,
// //                   overflow: TextOverflow.ellipsis,
// //                 ),
// //                 SizedBox(height: 4),
// //                 Text(
// //                   'Channel Name • 1M views • 1 day ago',
// //                   style: TextStyle(color: Colors.grey),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';

// class VideoCard extends StatelessWidget {
//   final String title;
//   final String channel;
//   final String views;
//   final String thumbnailUrl;

//   const VideoCard({
//     Key? key,
//     required this.title,
//     required this.channel,
//     required this.views,
//     required this.thumbnailUrl,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Row(
//         children: [
//           Image.network(
//             thumbnailUrl,
//             width: 150,
//             height: 90,
//             fit: BoxFit.cover,
//           ),
//           const SizedBox(width: 8),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   title,
//                   maxLines: 2,
//                   overflow: TextOverflow.ellipsis,
//                 ),
//                 const SizedBox(height: 4),
//                 Text(
//                   '$channel • $views',
//                   style: const TextStyle(color: Colors.grey),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class VideoCard extends StatelessWidget {
//   final String title;
//   final String channel;
//   final String views;
//   final String thumbnailUrl;

//   const VideoCard({
//     Key? key,
//     required this.title,
//     required this.channel,
//     required this.views,
//     required this.thumbnailUrl,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Video thumbnail
//           Image.network(
//             thumbnailUrl,
//             width: double.infinity,
//             height: 200,
//             fit: BoxFit.cover,
//           ),
//           const SizedBox(height: 8),

//           // Video title
//           Text(
//             title,
//             maxLines: 2,
//             overflow: TextOverflow.ellipsis,
//             style: const TextStyle(
//               fontWeight: FontWeight.bold,
//               fontSize: 18,
//             ),
//           ),
//           const SizedBox(height: 4),

//           // Channel name and views
//           Text(
//             '$channel • $views',
//             style: const TextStyle(
//               color: Colors.grey,
//               fontSize: 14,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  final String title;
  final String channel;
  final String views;
  final String thumbnailUrl;
  final String duration;

  const VideoCard({
    Key? key,
    required this.title,
    required this.channel,
    required this.views,
    required this.thumbnailUrl,
    required this.duration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Thumbnail with duration overlay
          Stack(
            children: [
              Image.network(
                thumbnailUrl,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 8,
                right: 8,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  color: Colors.black54,
                  child: Text(
                    duration,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),

          // Video title
          Text(
            title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 17, color: Colors.black),
          ),
          const SizedBox(height: 4),

          // Channel name and views
          Text(
            '$channel • $views',
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final String image;
  final String title;
  final String batch;
  final String seats;
  final String days;

  const CourseCard({
    super.key,
    required this.image,
    required this.title,
    required this.batch,
    required this.seats,
    required this.days,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //  Image
          Image.asset(
            image,
            height: 100,
            width: double.infinity,
            fit: BoxFit.cover,
          ),

          const SizedBox(height: 6),

          //  Info Row (Batch, Seats, Days)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _infoContainer(Icons.groups, batch),
                  _infoContainer(Icons.event_seat, seats),
                  _infoContainer(Icons.access_time, days),
                ],
              ),
            ),
          ),

          const SizedBox(height: 6),

          //  Course Title (Multiline Responsive)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Text(
              title,
              maxLines: 3,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                height: 1.3,
              ),
            ),
          ),

          const Spacer(),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey.shade300,
                foregroundColor: Colors.black87,
                padding: const EdgeInsets.symmetric(vertical: 10),
                textStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
                elevation: 0,
              ),
              child: const Text("বিস্তারিত দেখুন →"),
            ),
          ),
        ],
      ),
    );
  }

  //  Small Container with Icon + Text
  static Widget _infoContainer(IconData icon, String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        children: [
          Icon(icon, size: 14, color: Colors.black54),
          const SizedBox(width: 3),
          Text(
            text,
            style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

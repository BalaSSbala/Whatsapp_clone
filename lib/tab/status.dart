import 'package:flutter/material.dart';
import 'package:whatsapp/models/status_model.dart';

class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {
    final recentStatuses = statusList.where((status) => !status.isViewed).toList();
    final viewedStatuses = statusList.where((status) => status.isViewed).toList();

    return ListView(
      children: [
        // My Status
        ListTile(
          leading: Stack(
            children: [
              CircleAvatar(
                backgroundImage: const NetworkImage(
                  'https://media-maa2-1.cdn.whatsapp.net/v/t61.24694-24/361265254_254829553964533_224617126396608801_n.jpg?stp=dst-jpg_s96x96_tt6&ccb=11-4&oh=01_Q5Aa1QEs9JEd3byQPAwND0j9ZGFJ3P9D0WmLz6h32CncBnUXtQ&oe=68103F7D&_nc_sid=5e03e0&_nc_cat=102',
                ),
                radius: 25,
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.add,
                    size: 14,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          title: const Text("My Status", style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: const Text("Tap to add status update"),
        ),

        // Recent Updates
        if (recentStatuses.isNotEmpty) ...[
          Container(
            color: Colors.grey[200],
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              "Recent Updates",
              style: TextStyle(
                color: Colors.grey[600],
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ...recentStatuses.map((status) => Container(
            color: Colors.grey[100],
            child: ListTile(
              leading: Container(
                width: 52,
                height: 52,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.green,
                    width: 3, // border thickness
                  ),
                ),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(status.pic),
                  radius: 23,
                  backgroundColor: Colors.grey[200],
                ),
              ),
              title: Text(status.name, style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(status.time),
            ),
          )),
        ],

        // Viewed Updates
        if (viewedStatuses.isNotEmpty) ...[
          Container(
            color: Colors.grey[200],
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              "Viewed Updates",
              style: TextStyle(
                color: Colors.grey[600],
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ...viewedStatuses.map((status) => Container(
            color: Colors.grey[100],
            child: ListTile(
              leading: Container(
                width: 52,
                height: 52,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.grey,
                    width: 2, // thinner border for viewed
                  ),
                ),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(status.pic),
                  radius: 23,
                  backgroundColor: Colors.grey[200],
                ),
              ),
              title: Text(status.name, style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(status.time),
            ),
          )),
        ],
      ],
    );
  }
}
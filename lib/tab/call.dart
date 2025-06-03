import 'package:flutter/material.dart';
import 'package:whatsapp/models/call_model.dart';

class Call extends StatelessWidget {
  const Call({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: callsData.length,
      itemBuilder: (context, i) => Column(
        children: [
          const Divider(
            height: 0.5,
            thickness: 0.7,
            indent: 72,
            endIndent: 16,
            color: Color(0xFFE0E0E0),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(callsData[i].pic),
              backgroundColor: Colors.grey.shade300,
            ),
            title: Text(
              callsData[i].name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              children: [
                Icon(
                  callsData[i].isIncoming ? Icons.call_received : Icons.call_made,
                  size: 16,
                  color: callsData[i].isMissed ? Colors.red : Colors.green,
                ),
                const SizedBox(width: 6),
                Text(
                  callsData[i].time,
                  style: const TextStyle(fontSize: 13),
                ),
              ],
            ),
            trailing: Icon(
              callsData[i].isVideo ? Icons.videocam : Icons.call,
              color: const Color(0xFF075e54),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat_model.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatsData.length,
      itemBuilder: (context, i) => Column(
        children: [
          Divider(
            color: Colors.grey.shade300,
            indent: 72,
            endIndent: 16,
            height: 0.5,
            thickness: 0.7,
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.grey[300],
              backgroundImage: NetworkImage(chatsData[i].pic),
            ),
            title: Text(
              chatsData[i].name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Row(
              children: [
                if (chatsData[i].isme) ...[
                  Icon(
                    Icons.done_all,
                    size: 16,
                    color: Colors.blue, // ✅ blue for read, grey for sent
                  ),
                  const SizedBox(width: 4),
                ],
                Expanded(
                  child: Text(
                    chatsData[i].msg,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),

            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  chatsData[i].time,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 6),
                if (chatsData[i].unreadCount > 0)
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFF25D366),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      chatsData[i].unreadCount.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
              ],
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
          ),
        ],
      ),
    );
  }
}

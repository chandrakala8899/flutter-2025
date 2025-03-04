import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chat_Screen extends StatelessWidget {
  final List<ChatItem> chatList = [
    ChatItem(
        name: "Andrew Parker",
        message: "What kind of strategy is better?",
        time: "11/16/19",
        image: "assets/user1.png",
        isRead: true),
    ChatItem(
        name: "Karen Castillo",
        message: "0:14",
        time: "11/15/19",
        image: "assets/user2.png",
        isVoice: true),
    ChatItem(
        name: "Maximillian Jacobson",
        message: "Bro, I have a good idea!",
        time: "10/30/19",
        image: "assets/user3.png",
        isRead: true),
    ChatItem(
        name: "Martha Craig",
        message: "📷 Photo",
        time: "10/28/19",
        image: "assets/user4.png"),
    ChatItem(
        name: "Tabitha Potter",
        message: "Actually I wanted to check with you...",
        time: "8/25/19",
        image: "assets/user1.png"),
    ChatItem(
        name: "Maisy Humphrey",
        message: "Welcome, to make design faster...",
        time: "8/20/19",
        image: "assets/user2.png",
        isRead: true),
    ChatItem(
        name: "Kieron Dotson",
        message: "Ok, have a good trip!",
        time: "7/29/19",
        image: "assets/user3.png",
        isRead: true),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Broadcast Lists",
                    style: TextStyle(color: Colors.blue, fontSize: 16)),
                Text("New Group",
                    style: TextStyle(color: Colors.blue, fontSize: 16)),
              ],
            ),
          ),
          Divider(thickness: 1),
          Expanded(
            child: ListView.builder(
              itemCount: chatList.length,
              itemBuilder: (context, index) {
                final chat = chatList[index];
                return Dismissible(
                  key: Key(chat.name),
                  background: Container(
                    color: Colors.blue,
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Icon(Icons.archive, color: Colors.white),
                  ),
                  onDismissed: (direction) {
                    // Handle archive action
                  },
                  child: ChatItemTile(chat: chat),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

/// **Reusable Chat Item Tile**
class ChatItemTile extends StatelessWidget {
  final ChatItem chat;
  const ChatItemTile({required this.chat});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(chat.image),
        radius: 28,
      ),
      title: Text(chat.name, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Row(
        children: [
          if (chat.isRead) Icon(Icons.done_all, color: Colors.blue, size: 18),
          if (chat.isVoice) Icon(Icons.mic, color: Colors.green, size: 18),
          SizedBox(width: 5),
          Expanded(child: Text(chat.message, overflow: TextOverflow.ellipsis)),
        ],
      ),
      trailing: Text(chat.time, style: TextStyle(color: Colors.grey)),
    );
  }
}

/// **Chat Item Model**
class ChatItem {
  final String name;
  final String message;
  final String time;
  final String image;
  final bool isRead;
  final bool isVoice;

  ChatItem(
      {required this.name,
      required this.message,
      required this.time,
      required this.image,
      this.isRead = false,
      this.isVoice = false});
}

/// **Reusable App Bar**
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Center(
        child: Text(
          "Chats",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      actions: [
        IconButton(
            icon: Icon(Icons.edit, color: Colors.blue), onPressed: () {}),
      ],
      leading: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text("Edit",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 17,
                  fontWeight: FontWeight.w400)),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56);
}

class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      currentIndex: 2, // Set "Chats" as the default selected tab
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.circle, size: 8), label: "Status"),
        BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
        BottomNavigationBarItem(icon: Icon(Icons.camera_alt), label: "Camera"),
        BottomNavigationBarItem(
            icon: Icon(Icons.chat, color: Colors.blue), label: "Chats"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
      ],
    );
  }
}

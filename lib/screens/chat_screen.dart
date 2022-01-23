import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        title: const Text('Telegram'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: const People(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue.shade300,
        child: const Icon(Icons.auto_fix_high),
      ),
    );
  }
}

class People extends StatelessWidget {
  const People({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (BuildContext context, int index) => const Divider(
        indent: 60,
        thickness: 1.0,
      ),
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: const CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
          ),
          title: const Text(
            'Clinton',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          subtitle: const Text(
            'Good morning everyone',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Column(
            children: [
              const Text(
                '4:55 PM',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Container(
                child: const Text(
                  '103',
                  style: TextStyle(color: Colors.white),
                ),
                width: 30.0,
                height: 20.0,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30.0)),
                padding: const EdgeInsets.all(2),
              )
            ],
          ),
        );
      },
    );
  }
}

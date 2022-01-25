// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class SelectUserScreen extends StatelessWidget {
  const SelectUserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.person_add),
      ),
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pushNamed(context, '/');
            }),
        title: const Text(
          'Telegram',
        ),
        actions: const [
          Icon(Icons.search),
          SizedBox(
            width: 20.0,
          ),
          Icon(Icons.menu_open)
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const OptionsList(
            leading: Icon(
              Icons.people_outline,
            ),
            title: Text('New Group'),
          ),
          const OptionsList(
            leading: Icon(
              Icons.lock_outline,
            ),
            title: Text('New Secret Chat'),
          ),
          const OptionsList(
            leading: Icon(Icons.mic_none_outlined),
            title: Text('New Channel'),
          ),
          const Divider(
            height: 10.0,
            thickness: 9.0,
          ),
          SizedBox(
            width: double.infinity,
            height: 486.0,
            child: ListView.separated(
              itemCount: 20,
              separatorBuilder: (BuildContext context, int index) {
                return const Divider(
                  height: 10.0,
                  indent: 80,
                  thickness: 1.0,
                );
              },
              itemBuilder: (BuildContext context, int index) {
                return const ListTile(
                  leading: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
                  ),
                  title: Text(
                    'Clinton',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class OptionsList extends StatelessWidget {
  final Widget? leading;
  final Widget? title;

  const OptionsList({required this.leading, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: title,
    );
  }
}

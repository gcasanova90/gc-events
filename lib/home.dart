import 'dart:async';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    final userDisplayName = FirebaseAuth.instance.currentUser?.displayName??'';

    return Scaffold(
      appBar: AppBar(
        actions: [
          Text(userDisplayName),
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              FirebaseAuth.instance.signOut();
            }, 
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const Text("ToDo list"),
            FilledButton(
              onPressed: () {

              },
              child: const Text("Test")
            ),
            StreamBuilder(
              stream: FirebaseFirestore.instance.collection("tasks").snapshots(),
              builder: (context, snapshot) {
                return ListView.builder(
                  itemCount: snapshot.data?.docs.length,
                  itemBuilder: (context, index) => ListTile(
                    leading: const Icon(Icons.check_box),
                    title: const Text('TEST'),
                    trailing: IconButton(
                      icon: const Icon(Icons.edit), 
                      onPressed: () {  
                        log('pressed');
                       
                      },
                    ),
                  )
                );
              }
            ),
            Task(addTask: (taskName) => print(taskName)),
            Row(
              children: [
                const Text("ToDo list"),
                IconButton(
                  icon: const Icon(Icons.add), 
                  onPressed: () {  
                    log('pressed');
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.delete), 
                  onPressed: () {  
                    log('pressed');
                  },
                )
              ],
            ),
            ListTile(
              leading: const Icon(Icons.map),
              title: const Text('Map'),
              trailing: IconButton(
                icon: const Icon(Icons.edit), 
                onPressed: () {  
                  log('pressed');
                },
              ),
            ),
            ListTile(
              leading: const Icon(Icons.map),
              title: const Text('Map 1'),
              trailing: IconButton(
                icon: const Icon(Icons.edit), 
                onPressed: () {  
                  log('pressed');
                },
              ),
            ),
          ],
        ),
      ),
    );  
  }
  
}

class Task extends StatefulWidget {
  const Task({required this.addTask, super.key});

  final FutureOr<void> Function(String taskName) addTask;

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  final _formKey = GlobalKey<FormState>(debugLabel: '_TaskState');
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: _formKey,
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                controller: _controller,
                decoration: const InputDecoration(
                  hintText: 'Enter a task',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter a task to continue';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(width: 8),
            IconButton(
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  await widget.addTask(_controller.text);
                  _controller.clear();
                }
              }, 
              icon: const Icon(Icons.add)
            ),
          ],
        ),
      ),
    );
  }
}
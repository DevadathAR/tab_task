
import 'package:flutter/material.dart';
import 'package:tab_task/screen/widget/detailed.dart';

class User {
  final String name;
  final String age;
  final String email;

  User({required this.name, required this.age, required this.email});
}

class NameTab extends StatelessWidget {
  NameTab({super.key});

  List<User> users = [
    User(name: 'Alice', age: '25', email: 'alice@example.com'),
    User(name: 'Bob', age: '30', email: 'bob@example.com'),
    User(name: 'Charlie', age: '28', email: 'charlie@example.com'),
    User(name: 'David', age: '35', email: 'david@example.com'),
    User(name: 'Eve', age: '22', email: 'eve@example.com'),
    User(name: 'Frank', age: '27', email: 'frank@example.com'),
    User(name: 'Grace', age: '29', email: 'grace@example.com'),
    User(name: 'Hannah', age: '31', email: 'hannah@example.com'),
    User(name: 'Ivy', age: '24', email: 'ivy@example.com'),
    User(name: 'Jack', age: '32', email: 'jack@example.com'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return Divider();
      },
      itemCount: users.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.person),
          title: Text(users[index].name),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(
                  title: users[index].name,
                  details:
                      'Age: ${users[index].age}\nEmail: ${users[index].email}',
                ),
              ),
            );
          },
        );
      },
    );
  }
}
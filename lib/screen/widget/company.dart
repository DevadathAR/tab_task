

import 'package:flutter/material.dart';
import 'package:tab_task/screen/widget/detailed.dart';

class CompanyTab extends StatelessWidget {
  CompanyTab({super.key});

  List<String> firms = [
    'Google', 'Microsoft', 'Apple', 'Amazon', 'Facebook',
    'Tesla', 'Spotify', 'Netflix', 'Adobe', 'Twitter'
  ];

  List<String> addresses = [
    '1600 Amphitheatre Parkway, Mountain View, CA',
    'One Microsoft Way, Redmond, WA',
    '1 Infinite Loop, Cupertino, CA',
    '410 Terry Avenue North, Seattle, WA',
    '1 Hacker Way, Menlo Park, CA',
    '3500 Deer Creek Road, Palo Alto, CA',
    '4 World Trade Center, New York, NY',
    '500 7th Avenue, New York, NY',
    '345 Park Avenue, San Jose, CA',
    '1355 Market Street, San Francisco, CA'
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
       separatorBuilder: (context, index) {
        return Divider();
      },
      itemCount: firms.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.business),
          title: Text(firms[index]),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(
                  title: firms[index],
                  details: addresses[index],
                ),
              ),
            );
          },
        );
      },
    );
  }
}


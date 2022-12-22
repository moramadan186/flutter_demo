import 'package:flutter/material.dart';

import 'app_bar.dart';

//data stored in database
var databaseItems = [
  {"name": "أحمد خالد علي", "time": "03:16"},
  {"name": "محمد احمد خالد ", "time": "03:55"},
  {"name": "أحمد خالد علي", "time": "03:16"},
  {"name": "محمد احمد خالد ", "time": "03:55"},
  {"name": "أحمد خالد علي", "time": "03:16"},
  {"name": "محمد احمد خالد ", "time": "03:55"},
  {"name": "أحمد خالد علي", "time": "03:16"},
  {"name": "محمد احمد خالد ", "time": "03:55"},
];

class UserItemModel {
  final String name;
  final String time;

  UserItemModel({required this.name, required this.time});
}

List<UserItemModel> getUsersList(List databaseItems) {
  List<UserItemModel> fetchedUsers = [];
  for (var e in databaseItems) {
    fetchedUsers.add(UserItemModel(name: e["name"], time: e["time"]));
  }

  return fetchedUsers;
}

class HomeScreen extends StatelessWidget {
  final List<UserItemModel> fetchedUsers = getUsersList(databaseItems);
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          const MyAppBar(
            title: Text(
              'قائمة المتصدرين',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
          ),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.all(20),
                child: ScrollConfiguration(
                  behavior: ScrollConfiguration.of(context)
                      .copyWith(scrollbars: false),
                  child: ListView.separated(
                      itemCount: fetchedUsers.length,
                      itemBuilder: (context, index) => userItemWidget(
                          name: fetchedUsers[index].name,
                          time: fetchedUsers[index].time),
                      separatorBuilder: (context, index) => Container(
                            width: double.infinity,
                            height: 1.0,
                            color: Colors.grey[300],
                          )),
                )),
          )
        ],
      ),
    );
  }
}

Widget userItemWidget({String? name, String? time}) {
  return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '3:00 S',
            style: TextStyle(fontSize: 16, color: Colors.grey[600]),
          ),
          Row(
            children: [
              Text(
                name!,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const IconButton(
                icon: Icon(
                  Icons.turned_in_rounded,
                  size: 30,
                ),
                onPressed: null,
              ),
            ],
          )
        ],
      ));
}

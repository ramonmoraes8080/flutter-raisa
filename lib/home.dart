import 'package:flutter/material.dart';
import 'package:raisa/harvest.dart';
import 'package:raisa/models/time_entry.dart';

class HomePageWidget extends StatelessWidget {

  static String route = "/home";

  @override
  Widget build(BuildContext context) {
    Harvest harvest = new Harvest();
    List timeEntries = harvest.getEntries();

    return Scaffold(
      body: getTimeEntriesView(timeEntries) // Text("You're at " + HomePageWidget.route)
    );
  }

  ListView getTimeEntriesView(List timeEntries) {
    return ListView.builder(
      itemCount: timeEntries.length,
      itemBuilder: (context, index) {
        final item = timeEntries[index];
        return getTimeEntryTile(item);
      }
    );
  }

  ListTile getTimeEntryTile(TimeEntry timeEntry) {
    return new ListTile(
      title: Text(timeEntry.notes),
      subtitle: Text(timeEntry.hours.toString()),
    );
  }

}
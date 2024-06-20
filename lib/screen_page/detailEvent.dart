// event_detail_page.dart

import 'package:flutter/material.dart';
import '../model/model_bola.dart';

class EventDetailPage extends StatelessWidget {
  final Event event;

  EventDetailPage({required this.event});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(event.strEvent),
        ),
        body: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                event.strPoster.isNotEmpty
                    ? Image.network(event.strPoster)
                    : Container(
                  width: double.infinity,
                  height: 200,
                  color: Colors.grey,
                  child: Icon(Icons.image_not_supported, size: 50, color: Colors.white),
                ),
                SizedBox(height: 20),
                Text(
                  'League: ${event.strLeague}',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  'Season: ${event.strSeason}',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 8),
                Text(
                  'Date: ${event.dateEvent}',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 8),
                Text(
                  'Time: ${event.strTime}',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            ),
        );
    }
}

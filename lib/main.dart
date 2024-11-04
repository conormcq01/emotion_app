import 'package:flutter/material.dart';

void main() {
  runApp(CommunicationApp());
}

class CommunicationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CommunicationWidget(),
    );
  }
}

class CommunicationWidget extends StatefulWidget {
  @override
  _CommunicationWidgetState createState() => _CommunicationWidgetState();
}

class _CommunicationWidgetState extends State<CommunicationWidget> {
  // Placeholder method for sending notifications (will update later)
  void _sendNotification(String message) {
    // This will be updated with actual notification sending logic
    print("Notification Sent: $message");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('How Are You Feeling?')),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          ElevatedButton(
            onPressed: () => _sendNotification("Happy"),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("😊", style: TextStyle(fontSize: 50)),
                Text("Happy"),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () => _sendNotification("Sad"),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("😢", style: TextStyle(fontSize: 50)),
                Text("Sad"),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () => _sendNotification("Angry"),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("😡", style: TextStyle(fontSize: 50)),
                Text("Angry"),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () => _sendNotification("Overwhelmed"),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("😭", style: TextStyle(fontSize: 50)),
                Text("Overwhelmed"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

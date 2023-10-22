import 'package:doctor_app/constant/App_Colors.dart';
import 'package:flutter/material.dart';

class NotificationSetting extends StatefulWidget {
  const NotificationSetting({super.key});

  @override
  State<NotificationSetting> createState() => _NotificationSettingState();
}

class _NotificationSettingState extends State<NotificationSetting> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.kGrey,
      appBar: AppBar(
        backgroundColor: AppColors.kGrey,
        title: const Text("Notification Setting"),

      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
             ReuseSwitchButton(title: 'App Notification', notify: false),
             ReuseSwitchButton(title: 'App Notification', notify: false),
             ReuseSwitchButton(title: 'App Notification', notify: false),
            ],
          ),
        ),
      ),
    );
  }
}

class ReuseSwitchButton extends StatefulWidget {
  final String title;
  final bool notify;

  ReuseSwitchButton({required this.title, required this.notify});

  @override
  _ReuseSwitchButtonState createState() => _ReuseSwitchButtonState();
}

class _ReuseSwitchButtonState extends State<ReuseSwitchButton> {
  late bool notify;

  @override
  void initState() {
    super.initState();
    notify = widget.notify;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.kWhiteF7,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.title),
              Switch(
                value: notify,
                onChanged: (newValue) {
                  setState(() {
                    notify = newValue;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}




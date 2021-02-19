import 'package:flutter/material.dart';

class SwitchAvailability extends StatefulWidget {
  @override
  _SwitchAvailabilityState createState() => _SwitchAvailabilityState();
}

class _SwitchAvailabilityState extends State<SwitchAvailability> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    
    return Switch(
          value: isSwitched,
          onChanged: (value){
            setState(() {
              isSwitched=value;
              print(isSwitched);
            });
          },
          inactiveTrackColor: Colors.red[500],
          activeTrackColor: Colors.lightGreenAccent[700],
          activeColor: Colors.green,
        );
     
  }
}
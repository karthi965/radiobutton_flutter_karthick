import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({required Key ?key}) : super(key: key);

  @override
  _RadioButtonState createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  String selectedOption = ''; // Initialize selectedOption

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Radio Button',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('10+10=20 this correct the answer?',style: TextStyle(fontSize: 20),),
            RadioListTile(
              title: Text('Wrong'),
              value: 'option 1',
              groupValue: selectedOption,
              onChanged: (value) {
                setState(() {
                  selectedOption = value!;
                });
              },
            ),
            RadioListTile(
              title: Text('correct '),
              value: 'option 2',
              groupValue: selectedOption,
              onChanged: (value) {
                setState(() {
                  selectedOption = value!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

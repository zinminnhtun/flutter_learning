import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0.0;
  String? menuItems="e1";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            DropdownButton(
              value: menuItems,
              items: [
                DropdownMenuItem(value:'e1',child:  Text('Element 1')),  
                DropdownMenuItem(value:'e2',child:  Text('Element 2')),
                DropdownMenuItem(value:'e3',child:  Text('Element 3')),
                DropdownMenuItem(value:'e4',child:  Text('Element 4')),

              ],
              onChanged: (String? value) {
                setState(() {
                  menuItems = value;
                });
              },
            ),
            TextField(
              controller: controller,
              decoration: InputDecoration(border: OutlineInputBorder()),
              onEditingComplete: () => setState(() {}),
            ),
            Text(controller.text),
            Checkbox.adaptive(
              // tristate: true,
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            CheckboxListTile.adaptive(
              // tristate: true,
              title: const Text('CheckboxListTile'),
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            Switch.adaptive(
              value: isSwitched,
              onChanged: (bool value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),
            SwitchListTile.adaptive(
              title: const Text('SwitchListTile'),
              value: isSwitched,
              onChanged: (bool value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),
            Slider.adaptive(
              max: 10.0,
              value: sliderValue,
              divisions: 10,
              onChanged: (double value) {
                setState(() {
                  sliderValue = value;
                });
                print(value);
              },
            ),
            InkWell(
              splashColor: Colors.teal,
              onTap: () {
                print("Image Selected");
              },
              child: Container(
                height: 50,
                width: double.infinity,
                color: Colors.white12,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
              ),
              child: Text("ElevatedButton"),
            ),
            ElevatedButton(onPressed: () {}, child: Text("ElevatedButton")),
            FilledButton(onPressed: () {}, child: Text("FilledButton")),
            TextButton(onPressed: () {}, child: Text("TextButton")),
            OutlinedButton(onPressed: () {}, child: Text("OutlineButton")),
            CloseButton(),
            BackButton(),
          ],
        ),
      ),
    );
  }
}

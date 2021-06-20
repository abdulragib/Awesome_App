import 'package:flutter/material.dart';

class name_card_widget extends StatelessWidget {
  const name_card_widget({
    Key? key,
    required this.myText,
    required TextEditingController nameController,
  })  : _nameController = nameController,
        super(key: key);

  final String myText;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(
            "assets/christopher-gower-m_HRfLhgABo-unsplash.jpg",
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            myText,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(padding: const EdgeInsets.all(16.0)),
          TextField(
            controller: _nameController,
            decoration: InputDecoration(
              hintText: "Enter some Text",
              labelText: "Name",
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }
}

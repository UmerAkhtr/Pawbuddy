import 'package:flutter/material.dart';

class pet_profile extends StatefulWidget {
  const pet_profile({super.key});

  @override
  State<pet_profile> createState() => _pet_profileState();
}

class _pet_profileState extends State<pet_profile> {
  List<String> options = ['Option 1', 'Option 2', 'Option 3'];
  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('Pet Profile', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,
        color: Colors.purple
        ),),
      ),
      
      body:
      Padding(
        padding: const EdgeInsets.only(top: 30),
        child: ListView(
          children: [
            FormField<String>(
        builder: (FormFieldState<String> state) {
            return InputDecorator(
            decoration: InputDecoration(
            labelText: 'Select an option',
            errorText: state.errorText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10)
        )
            ),
            isEmpty: selectedOption =="",
            child: DropdownButtonHideUnderline(
        child: DropdownButtonFormField<String>(
        value: selectedOption,
        onChanged: (String? newValue) {
        setState(() {
        selectedOption = newValue;
        });
        },
        items: options.map((String value) {
        return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
        );
        }).toList(),
        ),
            ),
            );
            },
            )
            ],
        ),
      ),
    );
  }
}

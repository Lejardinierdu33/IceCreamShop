import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final _formKey = GlobalKey<FormState>();

  final confNameController = TextEditingController();
  final speakerNameController = TextEditingController();

  String selectedConfType = "faq";

  @override
  void dispose() {
    super.dispose();

    confNameController.dispose();
    speakerNameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Contact Us',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          color: Colors.black, // Background color
          child: Form(
            key: _formKey,
            child: Column(children: [
              TextFormField(
                style: const TextStyle(color: Colors.pink), // Text color
                decoration: const InputDecoration(
                  labelText: 'Name',
                  hintText: 'Write your name...',
                  labelStyle: TextStyle(color: Colors.pink), // Label color
                  hintStyle: TextStyle(color: Colors.pink), // Hint color
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.pink),
                  ), // Border color
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.pink),
                  ), // Focused border color
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "don't forget to fill in here!";
                  }
                  return null;
                },
                controller: confNameController,
              ),
              const SizedBox(height: 10),
              TextFormField(
                style: const TextStyle(color: Colors.pink), // Text color
                decoration: const InputDecoration(
                  labelText: 'Mail',
                  hintText: 'Write your mail...',
                  labelStyle: TextStyle(color: Colors.pink), // Label color
                  hintStyle: TextStyle(color: Colors.pink), // Hint color
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.pink),
                  ), // Border color
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.pink),
                  ), // Focused border color
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "don't forget to fill in here!";
                  }
                  return null;
                },
                controller: speakerNameController,
              ),
              const SizedBox(height: 10),
              DropdownButtonFormField(
                icon: const Icon(Icons.arrow_drop_down_circle),
                iconSize: 25,
                elevation: 16,
                style: const TextStyle(color: Colors.pink, fontSize: 15,),
                items: const [
                  DropdownMenuItem(value: 'faq', child: Text('FAQ'),),
                  DropdownMenuItem(value: 'cream', child: Text('Ice Cream')),
                  DropdownMenuItem(value: 'flavor', child: Text('Flavor')),
                ],
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.pink),
                  ), // Border color
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.pink),
                  ), // Focused border color
                ),
                value: selectedConfType,
                onChanged: (value) {
                  setState(() {
                    selectedConfType = value!;
                  });
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                style: const TextStyle(color: Colors.pink), // Text color
                decoration: const InputDecoration(
                  labelText: 'Your Message',
                  hintText: 'Write your message...',
                  labelStyle: TextStyle(color: Colors.pink), // Label color
                  hintStyle: TextStyle(color: Colors.pink), // Hint color
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.pink),
                  ), // Border color
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.pink),
                  ), // Focused border color
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "don't forget to fill in here!";
                  }
                  return null;
                },
                controller: speakerNameController,
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
      
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Send a message...")));
                      FocusScope.of(context).requestFocus(FocusNode());
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.pink), // Button background color
                  ),
                  child:
                      const Text('Send', style: TextStyle(color: Colors.white)), // Button text color
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
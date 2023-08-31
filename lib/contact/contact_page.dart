import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final _formKey = GlobalKey<FormState>();

  final writeNameController = TextEditingController();
  final writeMailController = TextEditingController();
  final selectedTitleController = TextEditingController();
  final writeMessageController = TextEditingController();

  String selectedTitleType = "faq";

  @override
  void dispose() {
    super.dispose();

    writeNameController.dispose();
    writeMailController.dispose();
    selectedTitleController.dispose();
    writeMessageController.dispose();
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
          height: 600,
          color: Colors.black,
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [


                  // write name
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
                    controller: writeNameController,
                  ),
                  const SizedBox(height: 10),


                  // Write Mail
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
                    controller: writeMailController,
                  ),
                  const SizedBox(height: 10),


                  // Select Title
                  DropdownButtonFormField(
                    icon: const Icon(Icons.arrow_drop_down_circle),
                    iconSize: 25,
                    elevation: 16,
                    style: const TextStyle(
                      color: Colors.pink,
                      fontSize: 15,
                    ),
                    items: const [
                      DropdownMenuItem(
                        value: 'faq',
                        child: Text('FAQ'),
                      ),
                      DropdownMenuItem(
                          value: 'cream', child: Text('Ice Cream')),
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
                    value: selectedTitleType,
                    onChanged: (value) {
                      setState(() {
                        selectedTitleType = value!;
                      });
                    },
                  ),
                  const SizedBox(height: 10),


                  // write message
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
                    controller: writeMessageController,
                  ),
                  const SizedBox(height: 10),



                  // Button send
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text("Send a message...")));
                          FocusScope.of(context).requestFocus(FocusNode());
                        }
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Colors.pink), // Button background color
                      ),
                      child: const Text('Send',
                          style: TextStyle(
                              color: Colors.white)), // Button text color
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}

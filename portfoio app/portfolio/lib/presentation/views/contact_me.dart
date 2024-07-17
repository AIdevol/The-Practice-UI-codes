import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/services/auth/url_launcher.dart';
import 'package:portfolio/services/auth/url_links.dart';
import 'package:text_form_field_wrapper/text_form_field_wrapper.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({Key? key}) : super(key: key);

  static Future<void> _buildContactsForm(BuildContext context) async {
    final _formKey = GlobalKey<FormState>();
    final _nameController = TextEditingController();
    final _emailController = TextEditingController();
    final _subjectController = TextEditingController();
    final _messageController = TextEditingController();

    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Contact Form'),
          content: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormFieldWrapper(
                    formField: TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(labelText: 'Name',),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                    ),
                  ),
                  Gap(10),
                  TextFormFieldWrapper(
                    formField: TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(labelText: 'Email'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        // You can add more sophisticated email validation here
                        return null;
                      },
                    ),
                  ),
                  Gap(10),
                  TextFormFieldWrapper(
                    formField: TextFormField(
                      controller: _subjectController,
                      decoration: InputDecoration(labelText: 'Subject'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a subject';
                        }
                        return null;
                      },
                    ),
                  ),
                  Gap(10),
                  TextFormFieldWrapper(
                    formField: TextFormField(
                      controller: _messageController,
                      decoration: InputDecoration(labelText: 'Message'),
                      maxLines: 3,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a message';
                        }
                        return null;
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          actions: [
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
                _nameController.dispose();
                _emailController.dispose();
                _subjectController.dispose();
                _messageController.dispose();
              },
            ),
            TextButton(
              child: Text('Submit'),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // Process the form data
                  // You can add your logic here to handle the form submission
                  Navigator.of(context).pop();
                  _nameController.dispose();
                  _emailController.dispose();
                  _subjectController.dispose();
                  _messageController.dispose();
                }
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
        width: 100,
        child: Column(
          children: [
            Gap(10),
            Text('Choose Anyone'),
            Gap(25),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Row(
                children: [
                  ElevatedButton(
                      onPressed: () => UrlLauncherHelper.launchUrl(linktree),
                      child: Text('Link Tree')),
                  Gap(20),
                  ElevatedButton(
                      onPressed: () {
                        _buildContactsForm(context);
                      },
                      child: Text('Contact Us'))
                ],
              ),
            ),
          ],
        ));
  }
}

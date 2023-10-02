import 'package:design_pattern_app/feature/adapter/model/contact.dart';
import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({
    super.key,
    required this.contacts,
    required this.onPressed,
  });

  final List<Contact> contacts;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return contacts.isEmpty ?
        Platform()
  }
}

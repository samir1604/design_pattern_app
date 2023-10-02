import 'package:design_pattern_app/feature/adapter/model/contact.dart';
import 'package:design_pattern_app/feature/adapter/screens/controller/contacts_adapter.dart';
import 'package:flutter/material.dart';

class ContactsSection extends StatefulWidget {
  const ContactsSection({
    super.key,
    required this.adapter,
    required this.headerText,
  });

  final IContactsAdapter adapter;
  final String headerText;

  @override
  State<ContactsSection> createState() => _ContactsSectionState();
}

class _ContactsSectionState extends State<ContactsSection> {

  late final List<Contact> contacts;

  @override
  void initState() {
    super.initState();
    contacts = widget.adapter.getContacts();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.headerText),
        const SizedBox(height: 25),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child: _,
    );
    ],);
  }
}

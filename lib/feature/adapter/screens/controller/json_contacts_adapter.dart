import 'dart:convert';

import 'package:design_pattern_app/feature/adapter/api/json_api.dart';
import 'package:design_pattern_app/feature/adapter/model/contact.dart';
import 'package:design_pattern_app/feature/adapter/screens/controller/contacts_adapter.dart';

const contacts = 'contacts';

class JsonContactsAdapter implements IContactsAdapter {
  const JsonContactsAdapter({this.api = const JsonContactApi()});

  final JsonContactApi api;

  @override
  List<Contact> getContacts() {
    final contactsJson = api.getContactsJson();
    return _parseContactsJson(contactsJson);
  }

  List<Contact> _parseContactsJson(String contactsJson) {
    Map<String, dynamic> contactsMap = json.decode(contactsJson);
    final contactJsonList = contactsMap[contacts] as List;
    final contactList = contactJsonList.map((json) {
      final contactJson = json as Map<String, dynamic>;
      return Contact(
        fullName: contactJson['fullName'],
        email: contactJson['email'],
        favourite: contactJson['favourite'],
      );
    }).toList();

    return contactList;
  }
}

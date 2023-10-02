import 'package:design_pattern_app/feature/adapter/model/contact.dart';

abstract interface class IContactsAdapter {
  List<Contact> getContacts();
}
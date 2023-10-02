import 'package:design_pattern_app/feature/adapter/screens/controller/json_contacts_adapter.dart';
import 'package:design_pattern_app/feature/adapter/screens/widgets/contacts_section.dart';
import 'package:flutter/material.dart';

class HomeAdapter extends StatelessWidget {
  const HomeAdapter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Adapter')),
        body: const ScrollConfiguration(
          behavior: ScrollBehavior(),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ContactsSection(adapter: JsonContactsAdapter(),
                headerText: 'Contact from Json API',)
              ],
            ),
          ),
        ));
  }
}

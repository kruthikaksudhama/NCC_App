import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text("Training"),
            leading: Icon(Icons.directions_run),
            onTap: () => {},
          ),
          ListTile(
            title: Text("Enrollment"),
            leading: Icon(Icons.group),
              onTap: () => {},
          ),
          ListTile(
            title: Text("Contact"),
            leading: Icon(Icons.contact_page),
              onTap: () => {},
          ),
          ListTile(
            title: Text("Profile"),
            leading: Icon(Icons.verified_user),
            onTap: () => {},
          ),
        ],
      ),
    );
  }

}
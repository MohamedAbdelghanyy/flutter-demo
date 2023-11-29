import 'package:demo/widgets/search_textfield.dart';
import 'package:flutter/material.dart';

class MainLayout extends StatefulWidget {
  static const routeName = '/main-screen';
  final Widget child;

  const MainLayout({Key? key, required this.child}) : super(key: key);

  @override
  MainLayoutState createState() {
    return MainLayoutState();
  }
}

class MainLayoutState extends State<MainLayout> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 85,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: SearchTextField(),
        ),
      ),
      backgroundColor: Colors.white,
      body: widget.child,
    );
  }
}

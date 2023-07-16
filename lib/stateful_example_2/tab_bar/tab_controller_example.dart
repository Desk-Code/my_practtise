import 'package:flutter/material.dart';
import 'package:my_practtise/stateful_example_2/tab_bar/calls_page.dart';
import 'package:my_practtise/stateful_example_2/tab_bar/chats_page.dart';

import 'status_page.dart';

class TabControllerPage extends StatefulWidget {
  const TabControllerPage({super.key});

  @override
  State<TabControllerPage> createState() => _TabControllerPageState();
}

class _TabControllerPageState extends State<TabControllerPage>
    with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tab Bar Demo"),
        bottom: PreferredSize(
          preferredSize: const Size(double.infinity, 70),
          child: TabBar(
            controller: _tabController,
            tabs: const [
              Text("Chats"),
              Text("Status"),
              Text("Calls"),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          CallsPage(),
          ChatsPage(),
          StatusPage(),
        ],
      ),
    );
  }
}

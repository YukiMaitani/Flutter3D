import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter3D'),
        shadowColor: Colors.transparent,
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return ListView(
      children: [],
    );
  }

  Widget _buildListTile({required String title, required String path}) {
    return Builder(builder: (context) {
      return ListTile(
        title: Text(title),
        onTap: () {
          context.push(path);
        },
      );
    });
  }
}

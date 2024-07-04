import 'package:flutter/material.dart';
import 'package:inject_dependency/injection/injection.dart';
import 'package:inject_dependency/maneger/session_meneger.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final SessionMeneger sessionMeneger = getIt();

    debugPrint('HasCode: ${sessionMeneger.hashCode}');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Text(sessionMeneger.user?.name ?? 'Não logado'),
      ),
    );
  }
}

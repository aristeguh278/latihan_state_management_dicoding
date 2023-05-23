import 'package:flutter/material.dart';
import 'package:state_management/widgets/module_list.dart';
import '../widgets/done_module_list.dart';

class ModuleScreens extends StatefulWidget {
  const ModuleScreens({super.key});

  @override
  State<ModuleScreens> createState() => _ModuleScreensState();
}

class _ModuleScreensState extends State<ModuleScreens> {
  final List<String> doneModuleList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Memulai Pemrograman Dengan Dart'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.done),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      DoneModuleList(doneModuleList: doneModuleList),
                ),
              );
            },
          ),
        ],
      ),
      body: ModuleList(doneModuleList: doneModuleList),
    );
  }
}

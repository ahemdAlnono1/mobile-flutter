import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class myApp extends StatefulWidget {
  const myApp({super.key});

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  var tasks = [];
  num numtasks = 0;
  @override
  void initState() {
    if (_myBox.get("name") != null && _myBox.get("numtasks") != null) {
      tasks = _myBox.get("name");
      numtasks = _myBox.get("numtasks");
    } else {
      _myBox.put("name", []);
      _myBox.put("numtasks", 0);
    }
    super.initState();
  }

  String s_task = "";
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final _myBox = Hive.box('mybox');
  void add() {
    _myBox.put("name", tasks);
  }

  void initialTask() {
    tasks = _myBox.get("name");
    _myBox.put("numtasks", 1);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("local storage app"),
            centerTitle: true,
            elevation: 0.0,
          ),
          body: Container(
              padding: const EdgeInsets.all(5.0),
              margin: const EdgeInsets.all(3.0),
              child: Column(
                children: [
                  TextFormField(
                    key: _formKey,
                    decoration: const InputDecoration(
                      hintText: 'Enter new task',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'text';
                      }
                      return value;
                    },
                    onFieldSubmitted: (value) {
                      if (numtasks == 0) {
                        initialTask();
                      }
                      setState(() {
                        numtasks++;
                        tasks.add({"key": numtasks, "task": value});
                        add();
                        _myBox.put("numtasks", numtasks);
                      });
                    },
                    onChanged: (value) => s_task = value,
                  ),
                  TextButton(
                    onPressed: () {
                      if (numtasks == 0) {
                        initialTask();
                      }
                      setState(() {
                        numtasks++;
                        tasks.add({"key": numtasks, "task": s_task});
                        add();
                        _myBox.put("numtasks", numtasks);
                      });
                    },
                    child: const Text("add"),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        "your Task today is ",
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                      ),
                      for (int i = 0; i < tasks.length; i++)
                        Container(
                            padding: const EdgeInsets.all(5.9),
                            margin: const EdgeInsets.all(2.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "${tasks[i]["task"]}",
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w600),
                                ),
                                TextButton(
                                    onPressed: () {
                                      setState(() {
                                        tasks.removeAt(i);
                                        _myBox.put("name", tasks);
                                        numtasks--;
                                      });
                                    },
                                    child: const Text("Delete"))
                              ],
                            ))
                    ],
                  )
                ],
              ))),
    );
  }
}

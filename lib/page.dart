import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PageWidget extends StatefulWidget {
  const PageWidget({super.key});

  @override
  State<PageWidget> createState() => _PageWidgetState();
}

class _PageWidgetState extends State<PageWidget> {
  List<DropdownMenuItem<String>> db = const [
    DropdownMenuItem(
        value: "sql_monitor",
        child: Text(
          "sql_monitor",
          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
        )),
  ];
  List<DropdownMenuItem<String>> users = const [
    DropdownMenuItem(
        value: "gamidsql",
        child: Text(
          "gamidsql",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )),
  ];
  String selectedDb = 'sql_monitor';
  String selectedUser = 'gamidsql';

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('yyyy-MM-dd - kk:mm').format(now);
    return Scaffold(
      backgroundColor: const Color.fromRGBO(36, 36, 36, 0.5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
               Row(
                children: [
                  const Text(
                    'Текущая база данных: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    '${selectedDb}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  const Text(
                    'Время подключения: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    formattedDate,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
               Row(
                children: [
                  const Text(
                    'Пользователь: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    '${selectedUser}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const Row(
                children: [
                  Text(
                    'Хост: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    '127.0.0.1',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const Row(
                children: [
                  Text(
                    'Порт: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    '5432',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  const Text(
                    'Сменить базу данных',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 15),
                  DropdownButton(
                      dropdownColor: const Color.fromRGBO(36, 36, 36, 0.5),
                      value: selectedDb,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedDb = newValue!;
                        });
                      },
                      items: db),
                ],
              ),
              Row(
                children: [
                  const Text(
                    'Сменить пользователя',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 15),
                  DropdownButton(
                      dropdownColor: const Color.fromRGBO(36, 36, 36, 0.5),
                      value: selectedUser,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedUser = newValue!;
                        });
                      },
                      items: users),
                ],
              ),
              const Spacer(),
              OutlinedButton(
                  onPressed: () {
                    setState(() {
                      formattedDate =
                          DateFormat('yyyy-MM-dd - kk:mm').format(now);
                    });
                  },
                  child: const Text('Обновить данные'))
            ],
          ),
        ),
      ),
    );
  }
}

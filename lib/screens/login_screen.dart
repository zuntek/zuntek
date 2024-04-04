import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;

    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 50,
        backgroundColor: Colors.blue,
        title: const Text(
          '로그인',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 60,
          horizontal: 10,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  const Text(
                    '로그인',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'WELCOME',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.4),
                      fontSize: 20,
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(children: [
              TextField(
                decoration: InputDecoration(
                  labelText: '아이디',
                  labelStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: '비밀번호',
                  labelStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                obscureText: true,
              ),
            ]),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    textStyle: const TextStyle(
                      color: Colors.amber,
                    )),
                onPressed: () => print('next page'),
                child: const Text('로그인'),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '아이디나 비밀번호를 잊어버리셨나요?',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          textStyle: const TextStyle(
                            fontSize: 12,
                          )),
                      onPressed: () => print('next page'),
                      child: const Text('회원가입'),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          textStyle: const TextStyle(
                            fontSize: 12,
                          )),
                      onPressed: () => print('next page'),
                      child: const Text('아이디 찾기'),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          textStyle: const TextStyle(
                            fontSize: 12,
                          )),
                      onPressed: () => print('find password'),
                      child: const Text('비밀번호 찾기'),
                    ),
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    ));
  }
}

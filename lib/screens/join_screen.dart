import 'package:dob_input_field/dob_input_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zuntek/widgets/textbox.dart';

class join extends StatefulWidget {
  const join({super.key});

  @override
  State<join> createState() => _joinState();
}

bool _secureText1 = true;
bool _secureText2 = true;
TextEditingController _nameController = TextEditingController();

class _joinState extends State<join> {
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
        backgroundColor: Colors.white,
        title: const Text(
          '회원가입',
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 60,
            ),
            child: Column(children: [
              const Text(
                '회원가입을 환영합니다!',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const textBox(
                tcolor: Colors.black,
                boxText: '이름 및 생년월일 입력',
                size: 15,
              ),
              DOBInputField(
                  inputDecoration: const InputDecoration(),
                  dateFormatType: DateFormatType.DDMMYYYY,
                  initialDate: DateTime(2000, 1, 31),
                  lastDate: DateTime.now(),
                  firstDate: DateTime(0),
                  onDateSubmitted: (DateTime value) {}),
              const SizedBox(
                height: 30,
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: '전화번호',
                  hintText: '010-1234-5678',
                ),
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(
                height: 30,
              ),
              const textBox(
                tcolor: Colors.black,
                boxText: '아이디',
                size: 15,
                htext: '최소 6자 이상',
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  textStyle: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () => print('check duplicate'),
                child: const Text('중복확인'),
              ),
              const SizedBox(
                height: 50,
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: '비밀번호',
                    hintText: '영문, 숫자, 특수기호를 사용하여 12자 이상.',
                    labelStyle: const TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                    suffixIcon: IconButton(
                        icon: Icon(_secureText1
                            ? Icons.remove_red_eye
                            : Icons.security),
                        onPressed: () {
                          setState(() {
                            _secureText1 = !_secureText1;
                          });
                        })),
                obscureText: _secureText1,
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: '비밀번호 확인',
                    labelStyle: const TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                    suffixIcon: IconButton(
                        icon: Icon(_secureText2
                            ? Icons.remove_red_eye
                            : Icons.security),
                        onPressed: () {
                          setState(() {
                            _secureText2 = !_secureText2;
                          });
                        })),
                obscureText: _secureText2,
              ),
              const SizedBox(
                height: 50,
              ),
              const textBox(
                tcolor: Colors.black,
                boxText: '이메일',
                size: 15,
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () => print('next page'),
                    child: const Icon(Icons.arrow_forward_ios_sharp),
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    ));
  }
}

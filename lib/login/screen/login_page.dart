// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 500,
                width: 100,
                color: const Color.fromARGB(0, 246, 180, 26),
              ),
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 30.0,
                      left: 10,
                      right: 10,
                    ),
                    child: Image(
                        image: AssetImage('assets/images/Intro_Image.png')),
                  ),
                  Container(
                    padding: const EdgeInsets.all(80.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'ورود به مدرسه',
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintTextDirection: TextDirection.rtl,
                            hintText: 'شماره موبایل',
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            context.pushReplacement('/catalog');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 80, 106, 235),
                          ),
                          child: const Text(
                            'دریافت کد',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tooltip List Example',
      home: const TooltipListPage(),
    );
  }
}

class TooltipListPage extends StatelessWidget {
  const TooltipListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('List with Tooltips')),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          return Tooltip(
            showDuration: const Duration(seconds: 1),
            message: 'This is item #${index + 1}',
            child: ListTile(title: Center(child: Text('Item ${index + 1}'))),
          );
        },
      ),
    );
  }
}
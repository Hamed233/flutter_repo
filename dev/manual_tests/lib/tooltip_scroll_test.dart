// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() {
  runApp(const TooltipScrollTest());
}

class TooltipScrollTest extends StatelessWidget {
  const TooltipScrollTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tooltip Scroll Test',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const TooltipListPage(),
    );
  }
}

class TooltipListPage extends StatelessWidget {
  const TooltipListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tooltip Scroll Test'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          return Tooltip(
            message: 'This is item #${index + 1}',
            child: ListTile(
              leading: CircleAvatar(child: Text('${index + 1}')),
              title: Text('Item ${index + 1}'),
              subtitle: const Text('Try scrolling while hovering over this item'),
            ),
          );
        },
      ),
    );
  }
}

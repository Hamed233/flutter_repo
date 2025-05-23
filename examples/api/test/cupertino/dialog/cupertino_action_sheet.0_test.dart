// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter_api_samples/cupertino/dialog/cupertino_action_sheet.0.dart' as example;
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Perform an action on CupertinoActionSheet', (WidgetTester tester) async {
    const String actionText = 'Destructive Action';
    await tester.pumpWidget(const example.ActionSheetApp());

    // Launch the CupertinoActionSheet.
    await tester.tap(find.byType(CupertinoButton));
    await tester.pump();
    await tester.pumpAndSettle();
    expect(find.text(actionText), findsOneWidget);

    // Tap on an action to close the CupertinoActionSheet.
    await tester.tap(find.text(actionText));
    await tester.pumpAndSettle();
    expect(find.text(actionText), findsNothing);
  });
}

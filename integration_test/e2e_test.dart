import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:test_task_flutter/green_screen.dart';
import 'package:test_task_flutter/home_screen.dart' as app;
import 'package:test_task_flutter/main.dart';

void main() {
  testWidgets(
    'E2E test',
    (WidgetTester tester) async {

      await tester.pumpWidget(MyApp());

      final Finder greenBtn = find.text('зеленый');
      await tester.tap(greenBtn);
      await tester.pumpAndSettle();


      final Finder backGreenBtn = find.byTooltip('back_btn_icon');
      await tester.tap(backGreenBtn);
      await tester.pumpAndSettle();


      final Finder yellowBtn = find.byKey(ValueKey('yellow_btn_key'));
      await tester.tap(yellowBtn);
      await tester.pumpAndSettle();

      final Finder random_btn = find.byType(ElevatedButton);
      await tester.tap(random_btn);
      await tester.pumpAndSettle();


      final Finder backYellowBtn = find.byIcon( Icons.arrow_back);
      await tester.tap(backYellowBtn);
      await tester.pumpAndSettle();

    },
  );
}

// void backBtnPress(ValueKey key){
//   testWidgets(
//     'E2E test',
//         (WidgetTester tester) async {
//
//
//     },
//   );
// }

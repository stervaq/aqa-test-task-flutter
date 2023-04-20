import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_task_flutter/main.dart';
import 'package:test_task_flutter/yellow_screen.dart';

void main() {
  testWidgets(
      'Проверяем, что при тапе по кнопке число от 0 до 49 отображается синим цветом',
      (WidgetTester tester) async {
        await tester.pumpWidget(MyApp());

        final Finder yellowBtn = find.byKey(ValueKey('yellow_btn_key'));
        await tester.tap(yellowBtn);
        await tester.pumpAndSettle();

        Finder random_btn = find.byType(ElevatedButton);
        await tester.tap(random_btn);
        await tester.pumpAndSettle();

        final textColor = tester.widget<Text>(find.byKey(ValueKey('text_value')));
        expect(textColor.style?.color , Colors.blue);

        await tester.pumpAndSettle();

  });
}

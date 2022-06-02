import 'dart:html';
import 'dart:js';

void main(List<String> args) {
  final div = querySelector("#hint") as DivElement;
  div.text = "dart connected.";

  //
  var chart = context['chart'];
  var data = JsObject.jsify([
    {'candy': '旺仔牛奶糖', 'sales': 150},
    {'candy': '大白兔奶糖', 'sales': 100},
    {'candy': '悠哈', 'sales': 80},
    {'candy': '玉米糖', 'sales': 60}
  ]);

  chart.callMethod('source', [data]);
  chart.callMethod('render', []);

  print('data updated');
}

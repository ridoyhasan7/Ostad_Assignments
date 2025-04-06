void main(){

  List students = [
    {"name": "Alice", "scores": [85, 90, 78]},
    {"name": "Bob", "scores": [88, 76, 95]},
    {"name": "Charlie", "scores": [90, 92, 85]}
  ];

  Map<String, double> averages = {};

  for (var student in students) {
    String name = student['name'];
    List<int> scores = List<int>.from(student['scores']);
    double average = scores.reduce((a, b) => a + b) / scores.length;
    averages[name] = double.parse(average.toStringAsFixed(2)); // Round to 2 decimal places
  }

  var sortedAverages = averages.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value));

  print('Sorted average scores:');
  for (var entry in sortedAverages) {
    print('${entry.key}: ${entry.value}');
  }
}
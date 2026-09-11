double averange(List<int> grades) {
  if (grades.isEmpty) return 0;
  int sum = 0;
  for (var grade in grades) {
    sum += grade;
  }
  return sum / grades.length;
}

int maxGrade(List<int> grades) {
  int max = grades[0];
  for (var grade in grades) {
    if (grade > max) max = grade;
  }
  return max;
}

int minGrade(List<int> grades) {
  int min = grades[0];
  for (var grade in grades) {
    if (grade < min) min = grade;
  }
  return min;
}

String letterGrade(double avg) {
  if (avg >= 4.5) return 'Отлично';
  if (avg >= 3.5) return 'Хорошо';
  if (avg >= 2.5) return 'Удовлетворительно';
  return 'Неудовлетворительно';
}

void printStats({required String name, required List<int> grades}) {
  double avg = averange(grades);
  print(' $name');
  print('Оценки: $grades');
  print('Среднее: ${avg.toStringAsFixed(2)}');
  print('Макс: ${maxGrade(grades)}, Мин: ${minGrade(grades)}');
  print('Итог: ${letterGrade(avg)}');
  print('');
}

void main() {
  Map<String, List<int>> students = {
    'Артём Иванов': [5, 4, 5, 3, 4, 5],
    'Мария Петрова': [4, 4, 5, 5, 4, 5],
    'Иван Сидоров': [3, 3, 4, 2, 3, 4],
  };
  print('Анализатор оценок');

  students.forEach((name, grades) {
    printStats(name: name, grades: grades);
  });

  print('Общая статистика');
  int totalStudents = students.length;
  print('Всего студентов: $totalStudents');

  int excellentCount = 0;
  students.forEach((name, grades) {
    if (averange(grades) >= 4.5) excellentCount++;
  });
  print('Отличников: $excellentCount из $totalStudents');

}

// String greet(String name) {
//   return 'Привет, $name!';
// }

// int square(int x) => x * x;
// double half(double x) => x / 2;

// void describePet({required String name, String species = 'кот', int age = 0}){
//   print('$name - $species, возраст $age');
// }

// String repeat(String text, [int times = 2]) {
//   String result = '';
//   for (int i = 0; i < times; i++){
//     result += text;
//   }
//   return result;
// }

// void main() {

//   String day = 'Пн';
//   switch (day) {
//     case 'Сб':
//     case 'Вс':
//       print('Выходной');
//       break;
//     case 'Пн':
//       print('Начало недели');
//       break;
//     default:
//       print('Рабочий день');
//   }




//   for (int i = 0; i <5; i++) {
//     print(i);
//   }

//   List<String> fruits3 = ['яблоко', 'банан', 'груша'];
//   for (var fruit in fruits3) {
//     print(fruit);
//   }

//   int n = 0;
//   while (n <3) {
//     print(n);
//     n++;
//   }



//   int score2 = 85;
//   String grade;
//   if (score2 >=90) {
//     grade = 'A';
//   } else if (score2 >= 75) {
//     grade = 'B';
//   } else {
//     grade = 'C';
//   }

//   print(grade);

//   String result = score2 >= 60 ? 'Сдал' : 'Не сдал';
//   print(result);









//   List<int> numbers = [3, 1, 4, 1, 5, 9];
//   numbers.sort((a, b) => b-a);
//   print(numbers);

//   List<String> names = ['Артём', 'Мария', 'Иван'];
//   List<String> upper = names.map((name) => name.toUpperCase()).toList();
//   print(upper);

//   List<String> longNames = names.where((name) => name.length > 4).toList();
//   print(longNames);









//   print(greet('Артём'));
//   print(greet('Мария'));
  
//   print(square(5));
//   print(half(10.0));

//   describePet(name: 'Барсик', age: 3);
//   describePet(name: 'Шарик', species: 'пёс');

//   print(repeat('xa'));
//   print(repeat('xa', 3));



//   String name = 'Артём';
//   int age = 20;
//   double height = 1.75;
//   bool isStudent = true;

//   print('Привет, $name! Тебе $age лет.');
//   print('Через 5 лет тебе будет ${age + 5} лет.');
//   print('Рост: $height м, студент: $isStudent');

//   var score = 95;
//   var language = 'Dart';
//   print('$language: $score');

//   const String appName = 'Lab1';
//   final int startYear = 2026;
//   print('$appName started in $startYear');

//   String? city = null;
//   if (city != null) {
//     print(
//       city.toUpperCase(),
//       );
//   }
  
//   print(city?.toUpperCase());

//   String? nicname = null;
//   String display = nicname ?? 'Аноним';
//   print(display);

//   List<String> fruits = ['яблоко', 'банан', 'груша'];
//   fruits.add('апельсин');
//   print(fruits[0]);
//   print(fruits.length);

//   Map<String, dynamic> person = {'name': 'Артём', 'age': 20};
//   print(person['name']);
//   person['city'] = 'Волжский';

//   Set<int> ids = {1, 2, 3, 2, 1};
//   print(ids);
//   print(ids.length);

//   List<String> fruits2 = ['яблоко', 'банан', 'груша'];
//   for (var fruit in fruits2) {
//     print(fruit);
//   }

// }

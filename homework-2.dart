// void main() {
//   List<String> shoppingL = ['Bag', 'Bread', 'Phone'];


//   shoppingL.add('Cheese');


//   shoppingL.insert(1, 'Milk');

//   shoppingL.removeAt(2);

//   shoppingL[0] = 'Yogurt';
//   String item_1 = shoppingL.first;
//   String item_2 = shoppingL.last;
//   print('$item_1, $item_2');

//   bool isEmpty = shoppingL.isEmpty;
//   print(isEmpty);
//   print(shoppingL);
// }


// class Book {
//   String title;
//   String author;
//   int pages;

//   Book({required this.title, required this.author, required this.pages});

//   String getInfo() {
//     return '$title by $author, $pages pages';
//   }
// }

// void main() {
//   Book b = Book(title: 'The little prince', author: 'Antoine de Saint-Exupéry', pages: 300);
//   print(b.getInfo());
// }

// Future<int> delayedValue(int value) async {
//   await Future.delayed(Duration(milliseconds: 100));
//   return value;
// }

// Future<int> sumValues(int a, int b) async {
//   int v1 = await delayedValue(a);
//   int v2 = await delayedValue(b);
//   return v1 + v2;
// }

// void main() async {
//   int r = await sumValues(5, 10);
//   print(r);
// }





// abstract class Vehicle {
//   double fuelconsumption();
// }

// class Car extends Vehicle {
//   double litersPer100Km;

//   Car(this.litersPer100Km);

//   @override
//   double fuelconsumption() {
//     return litersPer100Km;
//   }
// }

// class Motorcycle extends Vehicle {
//   double litersPer100Km;

//   Motorcycle(this.litersPer100Km);

//   @override
//   double fuelconsumption() {
//     return litersPer100Km;
//   }
// }

// double totalconsumption(List<Vehicle> v, double d) {
//   double total = 0;
//   for (var i in v) {
//     total += (i.fuelconsumption() * d) / 100;
//   }
//   return total;
// }


// class Product {
//   String name;
//   String category;
//   double price;

//   Product(this.name, this.category, this.price);
// }

// Map<String, double> totalByCategory(List<Product> p) {
//   Map<String, double> totals = {};

//   for (var i in p) {
//     totals.update(
//       i.category,
//       (value) => value + i.price,
//       ifAbsent: () => i.price,
//     );
//   }

//   return totals;
// }

// Future<int> getNumber(int value) async {
//   await Future.delayed(Duration(milliseconds: 100));
//   if (value > 0) {
//     return value;
//   } else {
//     throw Exception('Value must be positive');
//   }
// }

// Future<int> safeGetNumber(int value) async {
//   try {
//     return await getNumber(value);
//   } catch (e) {
//     return 0;
//   }
// }


// abstract class Payment {
//   double calculateFee(double amount);
// }

// class CardPayment extends Payment {
//   @override
//   double calculateFee(double amount) {
//     return amount * 0.02; 
//   }
// }

// class CashPayment extends Payment {
//   @override
//   double calculateFee(double amount) {
//     return amount * 0.0; 
//   }
// }

// class CryptoPayment extends Payment {
//   @override
//   double calculateFee(double amount) {
//     return amount * 0.05;
//   }
// }

// double calculateTotal(Payment p, double a) {
//   return a + p.calculateFee(a);
// }


// List<int> findPair(List<int> nums, int target) {
//   for (int i = 0; i < nums.length; i++) {
//     for (int j = i + 1; j < nums.length; j++) {
//       if (nums[i] + nums[j] == target) {
//         return [i, j];
//       }
//     }
//   }
//   return [];
// }

// Future<String> runTask(String name, int milliseconds) async {
//   await Future.delayed(Duration(milliseconds: milliseconds));
//   return 'Task $name completed';
// }

// Future<List<String>> runTasks() async {
//   Future<String> t_a = runTask('A', 100);
//   Future<String> t_b = runTask('B', 50);
//   Future<String> t_c = runTask('C', 150);
//   String r_A = await t_a;
//   String r_B = await t_b;
//   String r_C = await t_c;

//   return [r_A, r_B, r_C];
// }

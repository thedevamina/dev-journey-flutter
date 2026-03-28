// Day5 :Day 5 - Collections, Generics, Error Handling
//Author :https://github.com/thedevamina
T getCheapest<T extends Map<String, dynamic>>(List<T> items) {
  items.sort((a, b) => a["price"].compareTo(b["price"]));
  return items.first;
}

void main() {

  List<Map<String, dynamic>> menu = [
    {"name": "Burger", "price": 300, "category": "Fast Food"},
    {"name": "Pizza", "price": 1200, "category": "Italian"},
    {"name": "Sandwich", "price": 250, "category": "Fast Food"},
    {"name": "Pasta", "price": 800, "category": "Italian"},
  ];

  print("Items under Rs.500:");
  var cheapItems = menu.where((item) => item["price"] < 500);
  for (var item in cheapItems) {
    print("${item["name"]} - Rs.${item["price"]}");
  }

  print("\n------------------");

  Set<String> categories = {};
  for (var item in menu) {
    categories.add(item["category"]);
  }
  print("Unique Categories: $categories");

  print("\n------------------");


  Map<String, dynamic> order = {
    "item": "Burger",
    "quantity": 2,
    "total": 600
  };

  print("Order Details:");


  order.forEach((key, value) {
    MapEntry entry = MapEntry(key, value);
    print("${entry.key}: ${entry.value}");
  });

  print("\n------------------");

  try {
    var item = menu.firstWhere((i) => i["name"] == "Biryani");
    print(item);
  } catch (e) {
    print("Error: Item not found!");
  }

  print("\n------------------");


  var cheapest = getCheapest(menu);
  print("Cheapest Item: ${cheapest["name"]} - Rs.${cheapest["price"]}");
}

import 'package:flutter/material.dart';

class CoffeeSelection extends StatefulWidget {
  @override
  _CoffeeSelectionState createState() => _CoffeeSelectionState();
}

class _CoffeeSelectionState extends State<CoffeeSelection> {
  String selectedCoffee = 'Latte';
  List<Map<String, String>> tiles = [
    {
      'image': 'assets/images/Rectangle 16 (2).png',
      'name': 'Latte',
      'description': 'Creamy and delicious',
      'price': '\$3.50'
    },
    {
      'image': 'assets/images/Rectangle 16.png',
      'name': 'Cappuccino',
      'description': 'Rich espresso with foam',
      'price': '\$4.00'
    }
  ];

  void updateTiles(String coffee) {
    setState(() {
      selectedCoffee = coffee;

      switch (coffee) {
        case 'Latte':
          tiles = [
            {
              'image': 'assets/images/Rectangle 16.png',
              'name': 'Latte',
              'description': 'Creamy and delicious',
              'price': '\$3.50'
            },
            {
              'image': 'assets/images/Rectangle 16 (2).png',
              'name': 'Latte 2',
              'description': 'Another tasty option',
              'price': '\$3.80'
            }
          ];
          break;
        case 'Cappuccino':
          tiles = [
            {
              'image': 'assets/images/Rectangle 16.png',
              'name': 'Cappuccino',
              'description': 'Rich espresso with foam',
              'price': '\$4.00'
            },
            {
              'image': 'assets/images/Rectangle 16 (2).png',
              'name': 'Cappuccino 2',
              'description': 'Smooth and creamy',
              'price': '\$4.20'
            }
          ];
          break;
        case 'Espresso':
          tiles = [
            {
              'image': 'assets/images/Rectangle 16.png',
              'name': 'Espresso',
              'description': 'Strong and bold',
              'price': '\$2.50'
            },
            {
              'image': 'assets/images/Rectangle 16 (2).png',
              'name': 'Espresso 2',
              'description': 'A classic favorite',
              'price': '\$2.80'
            }
          ];
          break;
        case 'Cafeterita':
          tiles = [
            {
              'image': 'assets/images/Rectangle 16.png',
              'name': 'Cafeterita',
              'description': 'Sweet and tasty',
              'price': '\$3.00'
            },
            {
              'image': 'assets/images/Rectangle 16.png',
              'name': 'Cafeterita 2',
              'description': 'Traditional flavor',
              'price': '\$3.20'
            }
          ];
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Coffee options l
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (String coffee in [
                    'Latte',
                    'Cappuccino',
                    'Espresso',
                    'Cafeterita'
                  ])
                    GestureDetector(
                      onTap: () => updateTiles(coffee),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          coffee,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: selectedCoffee == coffee
                                ? Colors.brown
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Tiles display
            Wrap(
              spacing: 70.0, 
              runSpacing: 50.0, // Space between rows
              alignment: WrapAlignment.start,
              children: [
                for (var tile in tiles)
                  Container(
                    width: 150, // Fixed width for each tile
                    height: 280, // Fixed height for each tile
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 120, // Fixed height for the image
                          child: Image.asset(
                            tile['image']!,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                tile['name']!,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 4),
                              Text(
                                tile['description']!,
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    tile['price']!,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.brown),
                                  ),
                                  SizedBox(width: 60),
                                  Expanded(
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Image.asset(
                                          'assets/images/Rectangle 15.png',
                                          height: 60,
                                          width: 60,
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            // Add to cart action
                                          },
                                          icon: Icon(Icons.add, size: 16),
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

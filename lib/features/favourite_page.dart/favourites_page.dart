import 'package:flutter/material.dart';
import 'package:mec2/core/assets/asset_data.dart';

class FavouritesPage extends StatefulWidget {
  const FavouritesPage({super.key});

  @override
  _FavouritesPageState createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  String? selectedChocolate;
  String? selectedSize;
  int quantity = 1; // Default quantity
  double price = 4.20; // Example price

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.5,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      AssetData.favouriteCoffee,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Image.asset(
                      AssetData.favouriteCoffeeFrame,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 42.0),
                child: Text(
                  'Description',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 42.0),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vel tincidunt et ullamcorper eu, vivamus semper commodo............Read More',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    _buildChocolateContainer('Dark Chocolate'),
                    const SizedBox(width: 15),
                    _buildChocolateContainer('Milk Chocolate'),
                    const SizedBox(width: 15),
                    _buildChocolateContainer('White Chocolate'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const Text(
                      'Select Size',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildSizeContainer('S'),
                        const SizedBox(width: 10),
                        _buildSizeContainer('M'),
                        const SizedBox(width: 10),
                        _buildSizeContainer('L'),
                      ],
                    ),
                  ],
                ),
                const SizedBox(width: 90),
                const SizedBox(height: 10),
                Column(
                  children: [
                    const Text(
                      'Quantity: ',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              if (quantity > 1) quantity--;
                            });
                          },
                          icon: const Icon(Icons.remove),
                        ),
                        Text('$quantity', style: const TextStyle(fontSize: 16)),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              quantity++;
                            });
                          },
                          icon: const Icon(Icons.add),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 42.0),
                  child: Column(
                    children: [
                      const Text(
                        'Price',
                      ),
                      Text(
                        '\$${(price * quantity).toStringAsFixed(2)}', // Total price
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Add buy now action here
                    },
                    child: const Text(
                      'Buy Now',
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.brown, // Background color
                      minimumSize: const Size(
                          220, 55), 
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildChocolateContainer(String label) {
    bool isSelected = selectedChocolate == label;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedChocolate = label;
        });
      },
      child: Container(
        width: 160, // Wider container
        height: 40, // Shorter height
        decoration: BoxDecoration(
          color: isSelected ? Colors.brown : Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.brown, width: 2),
        ),
        alignment: Alignment.center,
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.brown,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildSizeContainer(String size) {
    bool isSelected = selectedSize == size;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedSize = size;
        });
      },
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: isSelected ? Colors.brown : Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.brown, width: 2),
        ),
        alignment: Alignment.center,
        child: Text(
          size,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.brown,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

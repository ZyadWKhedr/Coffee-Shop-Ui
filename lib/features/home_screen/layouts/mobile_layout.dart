import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:mec2/core/assets/asset_data.dart';
import 'package:mec2/features/cart/cart_screen.dart';
import 'package:mec2/features/favourite_page.dart/favourites_page.dart';
import 'package:mec2/features/home_screen/widgets/coffee_selection.dart';
import 'package:mec2/features/home_screen/widgets/search_bar.dart';
import 'package:mec2/features/home_screen/widgets/special_for_u_tile.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});

  @override
  _MobileLayoutState createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  int _currentIndex = 0; // Track the current index

  final List<Widget> _pages = [
    Container(), // Placeholder for main content
    const FavouritesPage(), // Favorites page
    CartScreen(), // Shop page placeholder
    Container(color: Colors.green), // Listen page placeholder
    Container(color: Colors.orange), // Profile page placeholder
  ];

  @override
  Widget build(BuildContext context) {
    _pages[0] = _buildMainContent(); // Update the first page content

    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                'Zyad Wael',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              accountEmail: Text('ziad.w.khedr@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(AssetData.user),
              ),
              decoration: BoxDecoration(
                color: Colors.brown,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.brown),
              title: Text('Home'),
              onTap: () {
                setState(() {
                  _currentIndex = 0; // Navigate to home page
                });
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(FontAwesomeIcons.heart, color: Colors.brown),
              title: Text('Favorites'),
              onTap: () {
                setState(() {
                  _currentIndex = 1; // Navigate to favorites page
                });
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(FontAwesomeIcons.shoppingBag, color: Colors.brown),
              title: Text('Shop'),
              onTap: () {
                setState(() {
                  _currentIndex = 2; // Navigate to shop page
                });
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.brown),
              title: Text('Settings'),
              onTap: () {
                // Handle settings action
                Navigator.pop(context); // Close the drawer
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.brown),
              title: Text('Logout'),
              onTap: () {
                // Handle logout action
                Navigator.pop(context); // Close the drawer
              },
            ),
          ],
        ),
      ),
      body: _pages[_currentIndex], // Display the selected page
      bottomNavigationBar: Container(
        color: Colors.brown,
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.heart),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.shoppingBag),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.bell),
              label: 'Listen',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.user),
              label: 'Profile',
            ),
          ],
          currentIndex: _currentIndex,
          selectedItemColor: Colors.brown, // Selected item color
          unselectedItemColor:
              Colors.brown.withOpacity(0.7), // Unselected item color
          onTap: (index) {
            setState(() {
              _currentIndex = index; // Update the current index
            });
          },
        ),
      ),
    );
  }

  Widget _buildMainContent() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildHeader(),
          const SizedBox(height: 15),
          _buildCoffeeText(),
          const SizedBox(height: 20),
          _buildSearchBar(),
          const SizedBox(height: 20),
          CoffeeSelection(),
          const SizedBox(height: 30),
          _buildSpecialForYouSection(),
          const SizedBox(height: 15),
          const SpecialForUTile(
              description: 'Specially mixed and brewed which you must try!'),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Builder(
          builder: (context) => IconButton(
            iconSize: 40,
            icon: Image.asset(
              AssetData.drawerIcon,
              width: 40,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer(); // Open the drawer
            },
          ),
        ),
        Image.asset(AssetData.user),
      ],
    );
  }

  Widget _buildCoffeeText() {
    return const Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(
          'Find the best\nCoffee to your taste',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          const Expanded(child: CustomSearchBar()),
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                AssetData.settingSerchBarIcon,
                width: 70,
              ),
              IconButton(
                onPressed: () {
                  // Handle settings action
                },
                icon: const Icon(
                  FontAwesomeIcons.slidersH,
                  size: 20,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSpecialForYouSection() {
    return const Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Text(
          'Special for you',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.start,
        ),
      ),
    );
  }
}

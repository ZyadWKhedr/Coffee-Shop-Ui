import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:mec2/core/assets/asset_data.dart';
import 'package:mec2/features/home_screen/widgets/coffee_selection.dart';
import 'package:mec2/features/home_screen/widgets/search_bar.dart';
import 'package:mec2/features/home_screen/widgets/special_for_u_tile.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // White background for the layout
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32.0), // Increased padding
          child: Column(
            children: [
              // Row with drawer icon and user image
              _buildHeader(context),

              const SizedBox(height: 30), // Increased space

              // Coffee text
              _buildCoffeeText(),

              const SizedBox(height: 30), // Increased space

              // Row with Search Bar and Settings Icon
              _buildSearchBar(context),

              const SizedBox(height: 30), // Increased space

              // Coffee Selection Widget
              CoffeeSelection(),

              const SizedBox(height: 50), // Increased space

              // Special for You Section
              _buildSpecialForYouSection(),

              const SizedBox(height: 20), // Increased space

              // Special Tile
              const SpecialForUTile(
                description: 'Specially mixed and brewed which you must try!',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.brown, // Brown background for the bottom navigation bar
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.home, color: Colors.white),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.heart, color: Colors.white),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.shoppingBag, color: Colors.white),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.bell, color: Colors.white),
              label: 'Listen',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.user, color: Colors.white),
              label: 'Profile',
            ),
          ],
          currentIndex: 0, // Set the current index as needed
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
          onTap: (index) {
            // Handle navigation logic
          },
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Builder(
          builder: (context) {
            return IconButton(
              iconSize: 60, // Larger icon size for tablet
              icon: Image.asset(
                AssetData.drawerIcon,
                width: 60,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer(); // Open the drawer
              },
            );
          },
        ),
        Image.asset(
          AssetData.user,
          width: 60, // Larger image size for tablet
        ),
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
            fontSize: 34, // Increased font size for tablet
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildSearchBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          const Expanded(child: CustomSearchBar()),

          // Stack containing image and IconButton
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                AssetData.settingSerchBarIcon,
                width: 90, // Adjust image size as needed
              ),
              IconButton(
                onPressed: () {
                  // Handle settings action
                },
                icon: const Icon(
                  FontAwesomeIcons.slidersH,
                  size: 24, // Larger size for tablet
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
            fontSize: 30, // Increased font size for tablet
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.start,
        ),
      ),
    );
  }
}

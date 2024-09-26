import 'package:flutter/material.dart';
import 'package:mec2/core/assets/asset_data.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1), // Shadow color
              blurRadius: 10, 
              offset: const Offset(0, 5), 
            ),
          ],
        ),
        child: SizedBox(
          height: 55, 
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Find your coffee...',
              hintStyle: TextStyle(color: Colors.grey[350]),
              prefixIcon: Padding(
                padding:
                    const EdgeInsets.all(12.0),
                child: Image.asset(AssetData.searchIcon),
              ),
              filled: true,
              fillColor: Colors
                  .transparent, // Transparent fill since the Container already handles the background
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Color.fromARGB(
                      255, 226, 225, 225), 
                  width: 1.0, 
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Color.fromARGB(
                      255, 216, 216, 216), 
                  width: 1.0,
                ),
              ),
              contentPadding: const EdgeInsets.symmetric(
                  vertical: 15), 
            ),
          ),
        ),
      ),
    );
  }
}

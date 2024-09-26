import 'package:flutter/material.dart';
import 'package:mec2/core/assets/asset_data.dart';

class SpecialForUTile extends StatelessWidget {
  final String description;

  const SpecialForUTile({
    super.key,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 150,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.brown, 
          borderRadius: BorderRadius.circular(20), // Rounded corners
        ),
        child: Row(
          children: [
            // Image on the left
            ClipRRect(
              borderRadius:
                  BorderRadius.circular(8), // Rounded corners for image
              child: Image.asset(
                AssetData.specialCoffee,
                width: 130, // Image size
                height: 150,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(width: 15), // Space between image and text

            // Description text on the right
            Expanded(
              child: Text(
                description,
                style: const TextStyle(
                  color: Colors.white, // White text
                  fontSize: 16,
                ),
                maxLines: 2, // Limit the text to 2 lines
                overflow: TextOverflow.ellipsis, // Ellipsis for long text
              ),
            ),
          ],
        ),
      ),
    );
  }
}

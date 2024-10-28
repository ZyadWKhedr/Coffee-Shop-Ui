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
          borderRadius: BorderRadius.circular(20), 
        ),
        child: Row(
          children: [
           
            ClipRRect(
              borderRadius:
                  BorderRadius.circular(8), 
              child: Image.asset(
                AssetData.specialCoffee,
                width: 130, 
                height: 150,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(width: 15), 

       
            Expanded(
              child: Text(
                description,
                style: const TextStyle(
                  color: Colors.white, 
                  fontSize: 16,
                ),
                maxLines: 2, 
                overflow: TextOverflow.ellipsis, 
              ),
            ),
          ],
        ),
      ),
    );
  }
}

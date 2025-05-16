import 'package:flutter/material.dart';

class CustomCardView extends StatefulWidget {
  final String imageUrl;
  final String description;
  final VoidCallback onViewPressed;

  const CustomCardView({
    super.key,
    required this.imageUrl,
    required this.description,
    required this.onViewPressed,
  });

  @override
  State<CustomCardView> createState() => _CustomCardViewState();
}

class _CustomCardViewState extends State<CustomCardView> {


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Card(
          elevation: 1,
          color: Colors.lightBlue,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: SizedBox(
            width: constraints.minWidth,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                ClipRRect(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                  child: Image.network(
                    widget.imageUrl,
                    height: 120,
                    width: constraints.maxWidth,
                    fit: BoxFit.cover,

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Text(widget.description, style: const TextStyle(fontSize: 14, color: Colors.white,fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: widget.onViewPressed,
                        child: const Text("বিস্তারিত দেখি", style: TextStyle(fontSize: 12)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

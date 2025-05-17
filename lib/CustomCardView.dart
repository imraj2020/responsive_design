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

         return Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),

          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(4, 4),
                blurRadius: 10,
              ),
            ],
          ),
          alignment: Alignment.center,
         
          child: Column(
            children: [

                Expanded(child: Image.network(widget.imageUrl,height: 87,width: 300)),

                Positioned(
                  bottom: 15,
                  right: 10,
                  child: Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(5),
                    child: Text(
                      widget.description,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
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
        );
  }
}

import 'package:flutter/material.dart';

import 'CustomCardView.dart';
import 'package:sizer/sizer.dart';

class ResponsiveUi extends StatefulWidget {
  const ResponsiveUi({super.key});

  @override
  State<ResponsiveUi> createState() => _ResponsiveUiState();
}

class _ResponsiveUiState extends State<ResponsiveUi> {

  // Sample list of card data
  List<Map<String, String>> get cardData => [
    {
      'image': 'https://www.worldometers.info/img/flags/af-flag.gif',
      'description': 'Afghanistan',
    },
    {
      'image': 'https://www.worldometers.info/img/flags/al-flag.gif',
      'description': 'Albania',
    },
    {
      'image': 'https://www.worldometers.info/img/flags/ag-flag.gif',
      'description': 'Algeria',
    },
    {
      'image': 'https://www.worldometers.info/img/flags/an-flag.gif',
      'description': 'Andorra',
    },

    {
      'image': 'https://www.worldometers.info/img/flags/ao-flag.gif',
      'description': 'Angola',
    },

    {
      'image': 'https://www.worldometers.info/img/flags/ac-flag.gif',
      'description': 'Antigua and Barbuda',
    },

    {
      'image': 'https://www.worldometers.info/img/flags/ar-flag.gif',
      'description': 'Argentina',
    },

    {
      'image': 'https://www.worldometers.info/img/flags/an-flag.gif',
      'description': 'Armenia',
    },

    {
      'image': 'https://www.worldometers.info/img/flags/as-flag.gif',
      'description': 'Australia',
    },

    {
      'image': 'https://www.worldometers.info/img/flags/au-flag.gif',
      'description': 'Austria',
    },

    {
      'image': 'https://www.worldometers.info/img/flags/aj-flag.gif',
      'description': 'Azerbaijan',
    },

    {
      'image': 'https://www.worldometers.info/img/flags/bf-flag.gif',
      'description': 'Bahamas',
    },

    {
      'image': 'https://www.worldometers.info/img/flags/ba-flag.gif',
      'description': 'Bahrain',
    },

    {
      'image': 'https://www.worldometers.info/img/flags/bg-flag.gif',
      'description': 'Bangladesh',
    },

    {
      'image': 'https://www.worldometers.info/img/flags/bb-flag.gif',
      'description': 'Barbados',
    },

    {
      'image': 'https://www.worldometers.info/img/flags/bo-flag.gif',
      'description': 'Belarus',
    },

    {
      'image': 'https://www.worldometers.info/img/flags/be-flag.gif',
      'description': 'Belgium',
    },

    {
      'image': 'https://www.worldometers.info/img/flags/bh-flag.gif',
      'description': 'Belize',
    },

    {
      'image': 'https://www.worldometers.info/img/flags/bn-flag.gif',
      'description': 'Benin',
    },

    {
      'image': 'https://www.worldometers.info/img/flags/bt-flag.gif',
      'description': 'Bhutan',
    },
  ];



  @override
  Widget build(BuildContext context) {

    int carditem = 0;

    Size screenSize = MediaQuery.of(context).size;

    if (screenSize.width > 768 && screenSize.width < 1024) {
      carditem = 3;
    } else if (screenSize.width > 1024) {
      carditem = 4;
    } else {
      carditem = 2;
    }

    return Scaffold(
      // backgroundColor: Colors.grey[300],
      // backgroundColor: Colors.grey.withOpacity(0.7),
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Responsive Design'),
        backgroundColor: Colors.cyan,
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: GridView.builder(
            itemCount: cardData.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: carditem,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              childAspectRatio: 0.75, // optional, controls height/width ratio
            ),

            itemBuilder: (context, index) {
              final item = cardData[index];
              return CustomCardView(
                imageUrl: item['image']!,
                description: item['description']!,
                onViewPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Viewing: ${item['description']}")),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  final List<String> products = [
    'Chair', 'Bed', 'Table', 'Cupboard', 'Couch', 'Dining Table', 'Study Table', 'Pool Chairs', 'Kitchen Shelves', 'Doors'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Furniture Collection',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      backgroundColor: Colors.purple.shade50,
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            elevation: 5,
            color: Colors.white,
            child: ListTile(
              leading: Icon(Icons.weekend, color: Colors.deepPurple),
              title: Text(
                products[index],
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.deepPurple.shade900),
              ),
              subtitle: Text(
                'Premium quality ${products[index]} just for you!',
                style: TextStyle(color: Colors.black87),
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.deepPurple),
            ),
          );
        },
      ),
    );
  }
}

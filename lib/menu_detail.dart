import 'package:flutter/material.dart';
import 'package:kuis/groceries.dart';

class MenuDetail extends StatefulWidget {
  final Groceries groceries;
  const MenuDetail({Key? key, required this.groceries}) : super(key: key);

  @override
  State<MenuDetail> createState() => _MenuDetailState();
}

class _MenuDetailState extends State<MenuDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.groceries.name),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.groceries.productImageUrls.length,
              itemBuilder: (context, index) {
                return Image.network(widget.groceries.productImageUrls[index], fit: BoxFit.cover,);
              
            },),
          ),Text(widget.groceries.price),
          Text(widget.groceries.reviewAverage),
          Text(widget.groceries.stock),
          Text(widget.groceries.discount),
          Text(widget.groceries.productUrl),
          Text(widget.groceries.description),
        ],
      ),
    );
  }
}

import 'package:blinkitd_emo/api_servics/api_servics.dart';
import 'package:blinkitd_emo/model/productresmodel.dart';
import 'package:flutter/material.dart';

class OrdersBody extends StatefulWidget {
  const OrdersBody({super.key});

  @override
  State<OrdersBody> createState() => _OrdersBodyState();
}

class _OrdersBodyState extends State<OrdersBody> {

  late Future<productresmodel> futureProducts;

  @override
  void initState() {
    super.initState();
    futureProducts = ApiService().getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<productresmodel>(
      future: futureProducts,
      builder: (context, snapshot) {

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (snapshot.hasError) {
          return Center(
            child: Text(snapshot.error.toString()),
          );
        }

        final products = snapshot.data!.products!;

        return ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {

            final product = products[index];

            return Card(
              margin: const EdgeInsets.all(10),
              child: ListTile(
                leading: Image.network(
                  product.thumbnail ?? "",
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
                title: Text(product.title ?? ""),
                subtitle: Text(
                  "\$${product.price}",
                ),
                trailing: Text(
                  "⭐ ${product.rating}",
                ),
              ),
            );
          },
        );
      },
    );
  }
}
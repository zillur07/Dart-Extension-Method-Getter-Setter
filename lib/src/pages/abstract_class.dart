import 'package:example_of_extension_method/src/helpers/user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../config/base.dart';
import '../helpers/product.dart';

class AbstractClassPage extends StatelessWidget with Base {
  @override
  Widget build(BuildContext context) {
    User user = User();
    Product product = Product();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example of abstract class'),
      ),
      body: Obx(
        () => SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              const Text('Add & Remove User'),
              const Divider(thickness: 2),
              if (exampleC.userList.isNotEmpty)
                Obx(
                  () => ListView.builder(
                    scrollDirection: Axis.vertical,
                    primary: false,
                    shrinkWrap: true,
                    itemCount: exampleC.userList.length,
                    itemBuilder: (context, i) {
                      return ListTile(
                        title: Text(exampleC.userList[i]),
                        trailing: InkWell(
                          onTap: () {
                            user.delete(exampleC.userList[i]);
                          },
                          child: Icon(
                            Icons.delete,
                            color: Colors.red,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              TextField(
                decoration: InputDecoration(labelText: 'Enter text User name'),
                keyboardType: TextInputType.text,
                onChanged: exampleC.userInput,
              ),
              TextButton(
                  onPressed: () {
                    final val = exampleC.userInput.value;

                    user.add(val);
                  },
                  child: Text('Add User')),
              SizedBox(
                height: 20,
              ),
              const Text('Add & Remove Product'),
              const Divider(thickness: 2),
              if (exampleC.productList.isNotEmpty)
                Obx(
                  () => ListView.builder(
                    scrollDirection: Axis.vertical,
                    primary: false,
                    shrinkWrap: true,
                    itemCount: exampleC.productList.length,
                    itemBuilder: (context, i) {
                      return ListTile(
                        title: Text(exampleC.productList[i]),
                        trailing: InkWell(
                          onTap: () {
                            product.delete(exampleC.productList[i]);
                          },
                          child: Icon(
                            Icons.delete,
                            color: Colors.red,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              TextField(
                decoration:
                    InputDecoration(labelText: 'Enter text product name'),
                keyboardType: TextInputType.text,
                onChanged: exampleC.inputProduct,
              ),
              TextButton(
                  onPressed: () {
                    final val = exampleC.inputProduct.value;

                    product.add(val);
                  },
                  child: Text('Add Product')),
            ],
          ),
        ),
      ),
    );
  }
}

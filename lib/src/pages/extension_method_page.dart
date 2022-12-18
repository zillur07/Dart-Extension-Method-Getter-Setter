import 'package:example_of_extension_method/src/helpers/extension_method.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../config/base.dart';

class ExtensionMethodPage extends StatelessWidget with Base {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example of extansion method'),
      ),
      body: Obx(
        () => SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              const Text('Extension Method'),
              const Divider(thickness: 2),
              Row(
                children: [
                  SizedBox(
                    width: 100,
                    child: TextField(
                      decoration: InputDecoration(labelText: 'Enter text'),
                      keyboardType: TextInputType.text,
                      onChanged: exampleC.val_1,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        exampleC.expSuffix.value =
                            ' Apple.'.prefixWith(exampleC.val_1.value);
                      },
                      child: Text('Add Prefix')),
                  Spacer(),
                  Text(exampleC.expSuffix.value),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 100,
                    child: TextField(
                      decoration: InputDecoration(labelText: 'Enter text'),
                      keyboardType: TextInputType.text,
                      onChanged: exampleC.val_2,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        exampleC.expPrefix.value =
                            'I love '.suffixWith(exampleC.val_2.value);
                      },
                      child: Text('Add Suffix')),
                  Spacer(),
                  Text(exampleC.expPrefix.value),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 80,
                    child: TextField(
                      decoration: InputDecoration(labelText: 'Enter text'),
                      keyboardType: TextInputType.text,
                      onChanged: exampleC.val_3,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 80,
                    child: TextField(
                      decoration: InputDecoration(labelText: 'Enter text'),
                      keyboardType: TextInputType.text,
                      onChanged: exampleC.val_4,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        exampleC.expPrefixAndSuffix.value = 'love'
                            .prefixAndSuffixWith(
                                prefix: exampleC.val_3.value,
                                suffix: exampleC.val_4.value);
                      },
                      child: Text('Add')),
                  Spacer(),
                  Text(exampleC.expPrefixAndSuffix.value),
                ],
              ),
              SizedBox(height: 30),
              Text('Example of Number/int'),
              Divider(thickness: 2),
              Row(
                children: [
                  SizedBox(
                    width: 150,
                    child: TextField(
                      decoration:
                          InputDecoration(labelText: 'Enter your number'),
                      keyboardType: TextInputType.number,
                      onChanged: exampleC.inputVal_1,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        final val = int.parse(exampleC.inputVal_1.value);
                        final sum = exampleC.counter.value.getSum(val);
                        exampleC.counter.value = sum;
                      },
                      child: Text('Get Sum')),
                  Spacer(),
                  Text('${exampleC.counter.value}'),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text('Example of List'),
              Divider(thickness: 2),
              if (exampleC.fruitList.isNotEmpty)
                Obx(
                  () => ListView.builder(
                    scrollDirection: Axis.vertical,
                    primary: false,
                    shrinkWrap: true,
                    itemCount: exampleC.fruitList.length,
                    itemBuilder: (context, i) {
                      return ListTile(
                        title: Text(exampleC.fruitList[i]),
                      );
                    },
                  ),
                ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: TextField(
                      decoration: InputDecoration(labelText: 'Enter your text'),
                      keyboardType: TextInputType.text,
                      onChanged: exampleC.inputVal_2,
                    ),
                  ),
                  Expanded(
                    flex: 0,
                    child: TextButton(
                        onPressed: () {
                          exampleC.fruitList.addItem(exampleC.inputVal_2.value);
                        },
                        child: Text('Add Item')),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

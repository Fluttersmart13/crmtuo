import 'package:flutter/material.dart';

import '../utility/custome_popups.dart';


class TestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: CustomTextStyle.bold(text: "Title"),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: ListView(
            children: [
              Container(
                color: Colors.orange,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 16),
                          child: Column(
                            children: [
                              CustomTextStyle.regular(
                                text: "Title 1",
                              ),
                              CustomTextStyle.bold(text: "245", fontSize: 16),
                            ],
                          )),
                    ),
                    const VerticalDivider(
                      width: 20,
                      thickness: 1,
                      indent: 20,
                      endIndent: 0,
                      color: Colors.black,
                    ),
                    Expanded(
                      child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 16),
                          child: Column(
                            children: [
                              CustomTextStyle.regular(text: "Title 2"),
                              CustomTextStyle.bold(text: "245", fontSize: 16),
                            ],
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              getCart(),
              SizedBox(
                height: 8,
              ),
              getCart(),
              SizedBox(
                height: 8,
              ),
              getCart(),
              SizedBox(
                height: 8,
              ),
              getCart(),
              SizedBox(
                height: 8,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: CustomTextStyle.bold(text: "UPGRADE"))
            ],
          ),
        ));
  }
}

class getCart extends StatelessWidget {
  const getCart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      decoration: const BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      child: ListTile(
        leading: Icon(Icons.gif_box),
        title: CustomTextStyle.bold(text: "Art and litraturre"),
      ),
    );
  }
}
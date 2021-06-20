import 'package:flutter/material.dart';
import 'package:shopping/dataset.dart';
import 'package:shopping/viewProduct.dart';

class CartView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mon panier"),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 15)),
          Expanded(
            child: Container(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return Container(
                      height: 140,
                      child: Row(
                        children: [
                          Container(
                            width: 140,
                            child: Image.asset(assets[index], fit: BoxFit.fill),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      listCategory1[index].name,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      //color: primaryColor,
                                      '${prices[index].toString()} \€',
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                        width: 140,
                                        color: Colors.grey.shade200,
                                        height: 40,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.add,
                                              color: Colors.black,
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              '1',
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Container(
                                              padding:
                                                  EdgeInsets.only(bottom: 20),
                                              child: Icon(
                                                Icons.minimize,
                                                color: Colors.black,
                                              ),
                                            )
                                          ],
                                        )),
                                  ]))
                        ],
                      ));
                },
                itemCount: listCategory1.length,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 15,
                  );
                },
              ),
            ),
          ),
          Container(
            color: Colors.redAccent,
            child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text('TOTAL',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 10,
                        ),
                        Text('13 645,54 \€',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 30, left: 60),
                      height: 80,
                      width: 150,
                      child: GestureDetector(
                          onTap: () => print("paiement"),
                          child: Text("Paiement",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold))),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}

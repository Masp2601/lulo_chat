import 'package:flutter/material.dart';
import 'package:lulo_chat/mainscreen/main_screen.dart';
import 'package:lulo_chat/widgets/button_widget.dart';

class HomeTabPage extends StatefulWidget {
  const HomeTabPage({Key? key}) : super(key: key);

  @override
  State<HomeTabPage> createState() => _HomeTabPageState();
}

class _HomeTabPageState extends State<HomeTabPage> {
  @override
  Widget build(BuildContext context) {
    //final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: 75,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ButtonWidget(
                        text: "Abiertos",
                        active: true,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const MainScreen();
                              },
                            ),
                          );
                        }),
                    ButtonWidget(
                        text: "Agenda",
                        active: true,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const MainScreen();
                              },
                            ),
                          );
                        }),
                    ButtonWidget(
                        text: "Cerrados",
                        active: true,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const MainScreen();
                              },
                            ),
                          );
                        }),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 1000,
                width: MediaQuery.of(context).size.width,
                child: Column(children: [
                  //card # 1
                  Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 59,
                            width: 59,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Colors.blueAccent
                                // image: DecorationImage(
                                //   image: AssetImage("lib/Assets/Images/car.png"),
                                //   fit: BoxFit.cover,
                                // ),
                                ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Michel Andres Tovar',
                                        overflow: TextOverflow.fade,
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 16),
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(5))),
                                      padding: const EdgeInsets.all(3),
                                      child: Text(
                                        'Recien',
                                        style: TextStyle(
                                            color: Colors.blueAccent,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text.rich(
                                        softWrap: false,
                                        overflow: TextOverflow.fade,
                                        TextSpan(
                                            text: 'Producto: ',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.grey),
                                            children: <InlineSpan>[
                                              TextSpan(
                                                text:
                                                    'Genial te estare llamando',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w700,
                                                    color: Colors.black),
                                              ),
                                            ]),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Expanded(
                                      child: Text.rich(
                                          softWrap: false,
                                          overflow: TextOverflow.fade,
                                          TextSpan(
                                              text: 'Make: ',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.grey),
                                              children: <InlineSpan>[
                                                TextSpan(
                                                  text: 'snapshot.data.make',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Colors.black),
                                                )
                                              ])),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  new Divider(
                    color: Colors.grey,
                  ),
                  //card # 2
                  SizedBox(
                    height: 5,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 59,
                            width: 59,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Colors.blueAccent
                                // image: DecorationImage(
                                //   image: AssetImage("lib/Assets/Images/car.png"),
                                //   fit: BoxFit.cover,
                                // ),
                                ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Michel Andres Tovar',
                                        overflow: TextOverflow.fade,
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 16),
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(5))),
                                      padding: const EdgeInsets.all(3),
                                      child: Text(
                                        'Recien',
                                        style: TextStyle(
                                            color: Colors.blueAccent,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text.rich(
                                        softWrap: false,
                                        overflow: TextOverflow.fade,
                                        TextSpan(
                                            text: 'Producto: ',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.grey),
                                            children: <InlineSpan>[
                                              TextSpan(
                                                text:
                                                    'Genial te estare llamando',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w700,
                                                    color: Colors.black),
                                              ),
                                            ]),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Expanded(
                                      child: Text.rich(
                                          softWrap: false,
                                          overflow: TextOverflow.fade,
                                          TextSpan(
                                              text: 'Make: ',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.grey),
                                              children: <InlineSpan>[
                                                TextSpan(
                                                  text: 'snapshot.data.make',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Colors.black),
                                                )
                                              ])),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  new Divider(
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  //card # 3
                  Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 59,
                            width: 59,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Colors.blueAccent
                                // image: DecorationImage(
                                //   image: AssetImage("lib/Assets/Images/car.png"),
                                //   fit: BoxFit.cover,
                                // ),
                                ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Michel Andres Tovar',
                                        overflow: TextOverflow.fade,
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 16),
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(5))),
                                      padding: const EdgeInsets.all(3),
                                      child: Text(
                                        'Recien',
                                        style: TextStyle(
                                            color: Colors.blueAccent,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text.rich(
                                        softWrap: false,
                                        overflow: TextOverflow.fade,
                                        TextSpan(
                                            text: 'Producto: ',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.grey),
                                            children: <InlineSpan>[
                                              TextSpan(
                                                text:
                                                    'Genial te estare llamando',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w700,
                                                    color: Colors.black),
                                              ),
                                            ]),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Expanded(
                                      child: Text.rich(
                                          softWrap: false,
                                          overflow: TextOverflow.fade,
                                          TextSpan(
                                              text: 'Make: ',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.grey),
                                              children: <InlineSpan>[
                                                TextSpan(
                                                  text: 'snapshot.data.make',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Colors.black),
                                                )
                                              ])),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  new Divider(
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  // card # 4
                  Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 59,
                            width: 59,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Colors.blueAccent
                                // image: DecorationImage(
                                //   image: AssetImage("lib/Assets/Images/car.png"),
                                //   fit: BoxFit.cover,
                                // ),
                                ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Michel Andres Tovar',
                                        overflow: TextOverflow.fade,
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 16),
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(5))),
                                      padding: const EdgeInsets.all(3),
                                      child: Text(
                                        'Recien',
                                        style: TextStyle(
                                            color: Colors.blueAccent,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text.rich(
                                        softWrap: false,
                                        overflow: TextOverflow.fade,
                                        TextSpan(
                                            text: 'Producto: ',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.grey),
                                            children: <InlineSpan>[
                                              TextSpan(
                                                text:
                                                    'Genial te estare llamando',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w700,
                                                    color: Colors.black),
                                              ),
                                            ]),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Expanded(
                                      child: Text.rich(
                                          softWrap: false,
                                          overflow: TextOverflow.fade,
                                          TextSpan(
                                              text: 'Make: ',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.grey),
                                              children: <InlineSpan>[
                                                TextSpan(
                                                  text: 'snapshot.data.make',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Colors.black),
                                                )
                                              ])),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  new Divider(
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  // card 5
                  Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 59,
                            width: 59,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Colors.blueAccent
                                // image: DecorationImage(
                                //   image: AssetImage("lib/Assets/Images/car.png"),
                                //   fit: BoxFit.cover,
                                // ),
                                ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Michel Andres Tovar',
                                        overflow: TextOverflow.fade,
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 16),
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(5))),
                                      padding: const EdgeInsets.all(3),
                                      child: Text(
                                        'Recien',
                                        style: TextStyle(
                                            color: Colors.blueAccent,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text.rich(
                                        softWrap: false,
                                        overflow: TextOverflow.fade,
                                        TextSpan(
                                            text: 'Producto: ',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.grey),
                                            children: <InlineSpan>[
                                              TextSpan(
                                                text:
                                                    'Genial te estare llamando',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w700,
                                                    color: Colors.black),
                                              ),
                                            ]),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Expanded(
                                      child: Text.rich(
                                          softWrap: false,
                                          overflow: TextOverflow.fade,
                                          TextSpan(
                                              text: 'Make: ',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.grey),
                                              children: <InlineSpan>[
                                                TextSpan(
                                                  text: 'snapshot.data.make',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Colors.black),
                                                )
                                              ])),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  new Divider(
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  // card 6
                  Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 59,
                            width: 59,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Colors.blueAccent
                                // image: DecorationImage(
                                //   image: AssetImage("lib/Assets/Images/car.png"),
                                //   fit: BoxFit.cover,
                                // ),
                                ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Michel Andres Tovar',
                                        overflow: TextOverflow.fade,
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 16),
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(5))),
                                      padding: const EdgeInsets.all(3),
                                      child: Text(
                                        'Recien',
                                        style: TextStyle(
                                            color: Colors.blueAccent,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text.rich(
                                        softWrap: false,
                                        overflow: TextOverflow.fade,
                                        TextSpan(
                                            text: 'Producto: ',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.grey),
                                            children: <InlineSpan>[
                                              TextSpan(
                                                text:
                                                    'Genial te estare llamando',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w700,
                                                    color: Colors.black),
                                              ),
                                            ]),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Expanded(
                                      child: Text.rich(
                                          softWrap: false,
                                          overflow: TextOverflow.fade,
                                          TextSpan(
                                              text: 'Make: ',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.grey),
                                              children: <InlineSpan>[
                                                TextSpan(
                                                  text: 'snapshot.data.make',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Colors.black),
                                                )
                                              ])),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  new Divider(
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  // card 7
                  Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 59,
                            width: 59,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Colors.blueAccent
                                // image: DecorationImage(
                                //   image: AssetImage("lib/Assets/Images/car.png"),
                                //   fit: BoxFit.cover,
                                // ),
                                ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Michel Andres Tovar',
                                        overflow: TextOverflow.fade,
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 16),
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(5))),
                                      padding: const EdgeInsets.all(3),
                                      child: Text(
                                        'Recien',
                                        style: TextStyle(
                                            color: Colors.blueAccent,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text.rich(
                                        softWrap: false,
                                        overflow: TextOverflow.fade,
                                        TextSpan(
                                            text: 'Producto: ',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.grey),
                                            children: <InlineSpan>[
                                              TextSpan(
                                                text:
                                                    'Genial te estare llamando',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w700,
                                                    color: Colors.black),
                                              ),
                                            ]),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Expanded(
                                      child: Text.rich(
                                          softWrap: false,
                                          overflow: TextOverflow.fade,
                                          TextSpan(
                                              text: 'Make: ',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.grey),
                                              children: <InlineSpan>[
                                                TextSpan(
                                                  text: 'snapshot.data.make',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Colors.black),
                                                )
                                              ])),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  new Divider(
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  // card 8
                  Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 59,
                            width: 59,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Colors.blueAccent
                                // image: DecorationImage(
                                //   image: AssetImage("lib/Assets/Images/car.png"),
                                //   fit: BoxFit.cover,
                                // ),
                                ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Michel Andres Tovar',
                                        overflow: TextOverflow.fade,
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 16),
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(5))),
                                      padding: const EdgeInsets.all(3),
                                      child: Text(
                                        'Recien',
                                        style: TextStyle(
                                            color: Colors.blueAccent,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text.rich(
                                        softWrap: false,
                                        overflow: TextOverflow.fade,
                                        TextSpan(
                                            text: 'Producto: ',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.grey),
                                            children: <InlineSpan>[
                                              TextSpan(
                                                text:
                                                    'Genial te estare llamando',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w700,
                                                    color: Colors.black),
                                              ),
                                            ]),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Expanded(
                                      child: Text.rich(
                                          softWrap: false,
                                          overflow: TextOverflow.fade,
                                          TextSpan(
                                              text: 'Make: ',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.grey),
                                              children: <InlineSpan>[
                                                TextSpan(
                                                  text: 'snapshot.data.make',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Colors.black),
                                                )
                                              ])),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  new Divider(
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}

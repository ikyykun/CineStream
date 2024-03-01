import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
 
  void _showPurchaseOptionsDialog() {
    showDialog(
      
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.black,
        title: Text(
          'Purchase Options',
          style: TextStyle(color: Colors.purple),
        ),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                ElevatedButton(
                      onPressed: () {},
                      child: Text('Premium Per Mounth RP 30.000'),
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 19, 19, 19),
                      ),
                    ),
                    SizedBox(height: 25,),
                ElevatedButton(
                      onPressed: () {},
                      child: Text('Premium Per Year RP 300.000'),
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 19, 19, 19),
                      ),
                    ),
                    SizedBox(height: 25,),
                ElevatedButton(
                      onPressed: () {},
                      child: Text('Life Time RP 3,000.000'),
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 19, 19, 19),
                      ),
                    ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              height: 300,
              child: Container(
                color: const Color.fromARGB(255, 19, 19, 19),
              ),
            ),
            Positioned(
              top: 50,
              left: 0,
              right: 0,
              child: Container(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("Buat Profile Image Disini!"),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Example Name',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Edit Profil'),
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 19, 19, 19),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 350,
                    height: 52,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: _showPurchaseOptionsDialog,
                    icon: Icon(Icons.star, color: Colors.yellow),
                    label: Text('Premium User',
                        style: TextStyle(color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      elevation: 0,
                      shadowColor: Colors.transparent,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.timer, color: Colors.white),
                      Text('until 11 march, 2024',
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 150,
              bottom: 0,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(Icons.shopping_bag_outlined, color: Colors.white),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Subscription pack',
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  SizedBox(width: 190),
                  Row(
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_forward_rounded,
                            color: Colors.white),
                        label: Text('', style: TextStyle(color: Colors.white)),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          elevation: 0,
                          shadowColor: Colors.transparent,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 250,
              bottom: 0,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(Icons.mode_comment_outlined, color: Colors.white),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Audio And Laungages',
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  SizedBox(width: 165),
                  Row(
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_forward_rounded,
                            color: Colors.white),
                        label: Text('', style: TextStyle(color: Colors.white)),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          elevation: 0,
                          shadowColor: Colors.transparent,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 350,
              bottom: 0,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(Icons.person_remove, color: Colors.red),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Logout', style: TextStyle(color: Colors.red)),
                    ],
                  ),
                  SizedBox(width: 260),
                  Row(
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_forward_rounded,
                            color: Colors.white),
                        label: Text('', style: TextStyle(color: Colors.white)),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          elevation: 0,
                          shadowColor: Colors.transparent,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

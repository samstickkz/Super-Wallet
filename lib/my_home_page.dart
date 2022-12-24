import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:dotted_border/dotted_border.dart';

import 'wallet_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 428,
                height: 500,
                child: Image.asset('assets/card.png'),
              ),
            ),

            Column(
              children: [
                Text('SuperWallet',
                  style: TextStyle(
                    color: HexColor('#1A1A1A'),
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height:10 ,),
                
                Text('One stop solution to all your payment let sbisiub'),
                Text('related problems'),

              ],
              

            ),

            SizedBox(height: 60,),

            GestureDetector(
              onTap: (){

                Navigator.push(context, MaterialPageRoute(builder: (context)=>WalletPage()));
              },

              child: Container(
                width: 368,
                height: 63,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.71),
                  color: HexColor('7D73C3'),
                ),
                child: Center(child: Text('Get Started',
                style: TextStyle(
                  color: Colors.white
                ),
                )),
              ),
            )
          ],




        ),


      ),


    );
  }
}

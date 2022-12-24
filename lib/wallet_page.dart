import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu, size: 36,),
                  Text('My Wallet',
                  style: TextStyle(
                    fontSize: 15.38,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  Icon(Icons.notifications_active_outlined, size: 36,),
                ],

              ),


              SizedBox(height:25 ,),
              Column(
                children: [
                  Text('Total balnce', style: TextStyle(
                    color: HexColor('B6B6B6'),
                  ),),
                  Text('\$24,000',
                  style: TextStyle(
                    fontSize: 41.4,
                  ),
                  ),
                ],

              ),
            SizedBox(height: 10,),
              Row(
                children: [
                  DottedBorder(
                    borderType: BorderType.Circle,
                   dashPattern: [5,5],


                    child: Container(
                      height: 30,
                      width: 30,
                      child: Container(
                        child: Icon(Icons.add),
                      ),


                        
                    ),
                  ),
                  SizedBox(width: 18,),

                  Container(
                    width: 301,
                    height: 181,
                    child: PageView(
                      controller: _controller,
                      children: [
                        Image.asset('assets/mastercard.png'),
                        Image.asset('assets/visacard.png'),

                      ],
                    ),
                    decoration: const BoxDecoration(
                      boxShadow: [

                      ]
                    ),

                  ),
                ],
              ),

              SizedBox(height: 5,),
              SmoothPageIndicator(controller: _controller, count: 2, effect: WormEffect( activeDotColor: HexColor('7D73C3'), dotHeight: 6, dotWidth: 20  ), ),

              SizedBox(height: 45,),
              
              // Expences
              Row(
                children: [
                  Text('Expences', style: TextStyle(
                    color: HexColor('B6B6B6'),

                  ),),
                ],
                
              ),

              SizedBox(height: 30,),
              
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Container(
                          width: 50,
                          height: 50,
                          child: Image.asset('assets/icons.png')),
                      
                      Text('Food and Drinks', style: TextStyle(
                        fontSize: 10

                      ),

                      ),
                    ],
                    
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Container(
                          width: 50,
                          height: 50,
                          child: Image.asset('assets/icons2.png')),

                      Text('Sport', style: TextStyle(
                          fontSize: 10

                      ),),
                    ],

                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Container(
                          width: 50,
                          height: 50,
                          child: Image.asset('assets/icons3.png')),

                      Text('Shopping', style: TextStyle(
                          fontSize: 10

                      ),),
                    ],

                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Container(
                          width: 50,
                          height: 50,
                          child: Image.asset('assets/icons4.png')),

                      Text('  Bills', style: TextStyle(
                          fontSize: 10

                      ),),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 37,),

              Row(
                children: [
                  Text('Send Money', style: TextStyle(
                    color: HexColor('B6B6B6'),
                  ),),
                ],
              ),

            SizedBox(height: 18,),


              SizedBox(height: 10,),

              Container(


                height: 73,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    DottedBorder(
                      borderType: BorderType.Circle,
                      dashPattern: [5,5],


                      child: Container(
                        height: 73,
                        width: 73,
                        child: Container(
                          child: Icon(Icons.person_outline_outlined),
                        ),



                      ),
                    ),
                    SizedBox(width: 18,),

                    Container(
                      child: Image.asset('assets/p2.png'),

                      height: 73,
                      width: 73,
                      decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(100)
                      ),

                    ),

                    SizedBox(width: 18,),

                    Container(
                      child: Image.asset('assets/p1.png'),

                      height: 73,
                      width: 73,
                      decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(100)
                      ),

                    ),

                    SizedBox(width: 18,),

                    Container(
                      child: Image.asset('assets/p3.png'),

                      height: 73,
                      width: 73,
                      decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(100)
                      ),

                    ),

                    SizedBox(width: 18,),

                    Container(
                      child: Image.asset('assets/p4.png'),

                      height: 73,
                      width: 73,
                      decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(100)
                      ),

                    ),

                    SizedBox(width: 18,),

                    Container(
                      child: Image.asset('assets/p3.png'),

                      height: 73,
                      width: 73,
                      decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(100)
                      ),

                    ),

                    SizedBox(width: 18,),

                    Container(
                      child: Image.asset('assets/p2.png'),

                      height: 73,
                      width: 73,
                      decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(100)
                      ),

                    ),

                    SizedBox(width: 18,),

                    Container(
                      child: Image.asset('assets/p1.png'),

                      height: 73,
                      width: 73,
                      decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(100)
                      ),

                    ),

                  ],
                ),
              )
            ],

          ),

        ),


      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        items: <Widget>[
          Icon(Icons.add, size: 30,color: Colors.white,),
          Icon(Icons.list, size: 30,color: Colors.white,),
          Icon(Icons.compare_arrows, size: 30, color: Colors.white,),

        ],
          color: HexColor('7D73C3'),

      ),


    );

  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor:Colors.white,title: Text('Home',
        style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
      
             actions: [
              CircleAvatar(),
              SizedBox(width: 10,),
              Icon(Icons.list_sharp,size: 40,)
             ],),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [Text('Main Account',style: TextStyle(color:Color.fromRGBO(97, 8, 192, 0.984),fontWeight: FontWeight.bold ),),
                        Icon(Icons.arrow_drop_down_outlined ,color: Color.fromRGBO(97, 8, 192, 0.984),)],
            ),
           Text("13.458\$",style:TextStyle(fontSize: 38,fontWeight: FontWeight.bold)),
            Row(
              children: [Icon(Icons.arrow_drop_down_outlined,color: Colors.grey[600],),
                             Text('Current Balance',style: TextStyle(color: Colors.grey[600]),),],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               
                Container(width:45,height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color:Color.fromRGBO(187, 148, 228, 0.973)
                ),
                child: Icon(Icons.add),
                ),
      
                Container(width: 45,height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color:Color.fromRGBO(187, 148, 228, 0.973)
                ),
                child: Icon(Icons.arrow_circle_right),
                ),
                Container(height: 45,width: 250,
                decoration: BoxDecoration(
                    color:Color.fromRGBO(201, 175, 228, 0.973),
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Center(
                  child: Text('Split a purchase',
                             style: TextStyle(color: Color.fromRGBO(97, 8, 192, 0.984),fontSize: 15,fontWeight: FontWeight.bold),),
                ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Text('Recent events',style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: 15,),
            Expanded(
            child: ListView(
              children: [
               
                ListTile(
                  leading: Image.network("https://betteristemporary.com/studio/logos-normal/2.png"),
                  title: Text('NIKE'),
                  subtitle: Text('17Oct'),
                  trailing: Text('-62.94\$'),
                ),
                ListTile(
                  leading: Image.network("https://paternostersquare.info/wp-content/uploads/2021/04/paternoster-aquare-retailer-starbucks@2x.jpg"),
                  title: Text('STARBUCKS'),
                  subtitle: Text('17Oct'),
                  trailing: Text(' -6.00\$'),
                ),
                ListTile(
                  leading: Image.network("https://en.pimg.jp/110/046/213/1/110046213.jpg"),
                  title: Text('Anna Johnson'),
                  subtitle: Text('14Oct'),
                  trailing: Text('\$500'),
                )
               
               , 
                ListTile(
                  leading: Image.network("https://c8.alamy.com/comp/2D7X373/close-up-of-large-dollar-bills-american-currency-close-up-photo-of-money-heap-of-dollar-bills-us-dollars-banknotes-photo-aspect-ratio-11-2D7X373.jpg"),
                  title: Text('From Saving'),
                  subtitle: Text('17Oct'),
                  trailing: Text('2500\$'),
                )
                ,ListTile(
                  leading:Image.network("https://pics.craiyon.com/2023-08-03/c12f3268763f482fa5271f92d519aa95.webp"),
                  title: Text('McDonald\'s'),
                  subtitle: Text('17Oct'),
                  trailing: Text('1237\$'),
                )
                ,ListTile(
                  leading:Image.network("https://online.plymouthboattrips.co.uk/img/trip-thumbs/1558448997-summer-sundowner.jpg"),
                  title: Text('Outing'),
                  subtitle: Text('17Oct'),
                  trailing: Text('12.37\$'),
                ) ,ListTile(
                  leading:Image.network("https://b.zmtcdn.com/data/pictures/6/18538536/74784a82fa207a40b6705cb2878fa924_featured_v2.jpg?fit=around%7C108%3A108&crop=108%3A108%3B%2A%2C%2A"),
                  title: Text('Pub Expense'),
                  subtitle: Text('17Oct'),
                  trailing: Text('12.37\$'),
                ),ListTile(
                  leading:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6A777mMPfmCIF9c5qum6mvR1JtuwphVBvOnH-aDEeSQ&s"),
                  title: Text('Adidas'),
                  subtitle: Text('17Oct'),
                  trailing: Text('12.37\$'),
                ),
              
              
              ],),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
               Container(height: 50 ,width: 50,
              child: Icon(Icons.home),color: Colors.transparent,),
               Container(height: 50,width: 50,
               child: Icon(Icons.message),),
               Container(height: 50 ,width: 50,
               child: Icon(Icons.alarm_add_outlined),),
               Container(height: 50,width: 50,
               child: Icon(Icons.lock_clock),),],

              )
          ],
          
        ),
        
      )
      
    );
  }
}
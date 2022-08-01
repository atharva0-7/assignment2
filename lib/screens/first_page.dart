import 'package:assignment_2/address_list.dart';
import 'package:assignment_2/models/list_info.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstPage extends StatefulWidget {
  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  bool refreshPressed = true;

  addNewAddress()
  {
    setState(() {
      addressList1.add(
        ListInfo(address: "2464 Royal Ln. Mesa, New Jersey 45463", subAddress: "2118 Thornridge Cir. Syracuse, Connecticut 35624", imageUrl: "assets/images/image1.jpeg"),
      );
    });
  }
  Future<void> _refreshList() async
  {
    Future.delayed(const Duration(seconds: 2));
    addNewAddress();
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(
        centerTitle: false,
        title:const Text("Flutter App"),
      ),
      body: RefreshIndicator(
        onRefresh: ()async{
          await _refreshList();
        },
        child: ListView(children: [
          Padding(
            padding: const  EdgeInsets.only(left:24,top:26,bottom: 20),
            child:  Text("Contact List",style: GoogleFonts.rubik(
              fontSize:20,
              fontWeight: FontWeight.w700
            ),),
            
          ),
          
          ...addressList1.map((index){
            return Padding(
              padding: const EdgeInsets.only(left:28.0),
              child: ListTile(
                trailing:const  Icon(Icons.more_vert),
                subtitle: Text(index.subAddress,style: GoogleFonts.rubik(
                            fontSize:14,
                            fontWeight: FontWeight.w300
                          ),),
                title: Text(index.address,style:  GoogleFonts.rubik(
                            fontSize:14,
                            fontWeight: FontWeight.w500
                          ),),
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(index.imageUrl)),
              ),
            );
          }).toList()
        ]
        ,),
      )
    );
  }
}
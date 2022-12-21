

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ui/Utils/router.dart';

import '../../Utils/image_picker.dart';
import 'edith.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  ///image path

  String path = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,

        elevation: 0,
        leading: BackButton(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text("Edith Profile", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800, color: Colors.black),),
        actions: [
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Icon(Icons.settings, color: Colors.black, size: 30,),
            ),
          ),

        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: Column(
                children: [
                  Row(
                    children: [
                      Row(
                        children:  [

                                Image(image: AssetImage("assets/images/pictures.png"))

                        ],
                      ),
                      const SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text("update ur profile", style: TextStyle(fontWeight: FontWeight.w400, color: Colors.grey, fontSize: 12),),
                          ),
                          const SizedBox(height: 20,),
                          GestureDetector(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.black12),
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Text(
                                    "Upload Logo",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color: Colors.black26),
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],
                      )
                    ],
                  ),
               GestureDetector(
                 onTap: () {
                   nextPage(context, page: EditProfilePage());
                 },
                 child:  ListTile(
                   contentPadding: EdgeInsets.all(0),

                   title: Text("Favourite", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w700),),
                   trailing: Icon(Icons.arrow_forward_ios, color: Colors.black,),
                 ),
               ),

                  GestureDetector(
                    child:  ListTile(
                      contentPadding: EdgeInsets.all(0),

                      title: Text("Favourite", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w700),),
                      trailing: Icon(Icons.arrow_forward_ios, color: Colors.black,),
                    ),
                  ),

                  GestureDetector(
                    child:  ListTile(
                      contentPadding: EdgeInsets.all(0),

                      title: Text("Favourite", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w700),),
                      trailing: Icon(Icons.arrow_forward_ios, color: Colors.black,),
                    ),
                  ),

                  GestureDetector(
                    child:  ListTile(
                      contentPadding: EdgeInsets.all(0),

                      title: Text("Favourite", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w700),),
                      trailing: Icon(Icons.arrow_forward_ios, color: Colors.black,),
                    ),
                  ),

                  GestureDetector(
                    child:  ListTile(
                      contentPadding: EdgeInsets.all(0),

                      title: Text("Favourite", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w700),),
                      trailing: Icon(Icons.arrow_forward_ios, color: Colors.black,),
                    ),
                  ),

                  GestureDetector(
                    child:  ListTile(
                      contentPadding: EdgeInsets.all(0),

                      title: Text("Favourite", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w700),),
                      trailing: Icon(Icons.arrow_forward_ios, color: Colors.black,),
                    ),
                  ),

                  GestureDetector(
                    child:  ListTile(
                      contentPadding: EdgeInsets.all(0),

                      title: Text("Favourite", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w700),),
                      trailing: Icon(Icons.arrow_forward_ios, color: Colors.black,),
                    ),
                  ),

                  GestureDetector(
                    child:  ListTile(
                      contentPadding: EdgeInsets.all(0),

                      title: Text("Favourite", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w700),),
                      trailing: Icon(Icons.arrow_forward_ios, color: Colors.black,),
                    ),
                  ),

                  GestureDetector(
                    child:  ListTile(
                      contentPadding: EdgeInsets.all(0),

                      title: Text("Favourite", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w700),),
                      trailing: Icon(Icons.arrow_forward_ios, color: Colors.black,),
                    ),
                  ),

                  GestureDetector(
                    child:  ListTile(
                      contentPadding: EdgeInsets.all(0),

                      title: Text("Favourite", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w700),),
                      trailing: Icon(Icons.arrow_forward_ios, color: Colors.black,),
                    ),
                  ),

                  GestureDetector(
                    child:  ListTile(
                      contentPadding: EdgeInsets.all(0),

                      title: Text("Favourite", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w700),),
                      trailing: Icon(Icons.arrow_forward_ios, color: Colors.black,),
                    ),
                  ),

                  GestureDetector(
                    child:  ListTile(
                      contentPadding: EdgeInsets.all(0),

                      title: Text("Favourite", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w700),),
                      trailing: Icon(Icons.arrow_forward_ios, color: Colors.black,),
                    ),
                  ),


                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

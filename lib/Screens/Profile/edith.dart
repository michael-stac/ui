

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_text_form_field/flutter_text_form_field.dart';
import 'package:image_picker/image_picker.dart';

import '../../Utils/image_picker.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  TextEditingController  _businessName = TextEditingController();

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
              child: Icon(Icons.check, color: Colors.green, size: 30,),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 Center(
                   child: Stack(
                     children: [
                       Image(image: AssetImage("assets/images/pictures.png"), width: 100,),
                       Positioned(child: GestureDetector(
                         onTap: () {

                         },
                           child: Icon(Icons.edit, size: 30, color: Colors.green,)),
                         top: 70,
                         left: 50,

                       ),



                     ],
                   ),
                 ),
                  SizedBox(height: 20,),
                  Text("Enter Your information", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: Colors.black),),
                  SizedBox(height: 17,),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(bottom: 9),
                    child: Text(
                      " Name",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.black),
                    ),
                  ),

                  CustomTextField(
                    _businessName,
                    password: false,
                    hint: " ",
                    backgroundColor: Colors.white,
                    border: Border.all(color: Colors.green),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(bottom: 5, top: 19),
                    child: Text(
                      " Name",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.black),
                    ),
                  ),

                  CustomTextField(
                    _businessName,
                    password: false,
                    hint: " ",
                    backgroundColor: Colors.white,
                    border: Border.all(color: Colors.green),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(bottom: 5, top: 19),
                    child: Text(
                      " Name",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.black),
                    ),
                  ),

                  CustomTextField(
                    _businessName,
                    password: false,
                    hint: " ",
                    backgroundColor: Colors.white,
                    border: Border.all(color: Colors.green),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(bottom: 5, top: 19),
                    child: Text(
                      " Name",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.black),
                    ),
                  ),

                  CustomTextField(
                    _businessName,
                    password: false,
                    hint: " ",
                    backgroundColor: Colors.white,
                    border: Border.all(color: Colors.green),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(bottom: 5, top: 19),
                    child: Text(
                      " Name",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.black),
                    ),
                  ),

                  CustomTextField(
                    _businessName,
                    password: false,
                    hint: " ",
                    backgroundColor: Colors.white,
                    border: Border.all(color: Colors.green),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(bottom: 5, top: 19),
                    child: Text(
                      " Name",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.black),
                    ),
                  ),

                  CustomTextField(
                    _businessName,
                    password: false,
                    hint: " ",
                    backgroundColor: Colors.white,
                    border: Border.all(color: Colors.green),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(bottom: 5, top: 19),
                    child: Text(
                      " Name",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.black),
                    ),
                  ),

                  CustomTextField(
                    _businessName,
                    password: false,
                    hint: " ",
                    backgroundColor: Colors.white,
                    border: Border.all(color: Colors.green),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(bottom: 5, top: 19),
                    child: Text(
                      " Name",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.black),
                    ),
                  ),

                  CustomTextField(
                    _businessName,
                    password: false,
                    hint: " ",
                    backgroundColor: Colors.white,
                    border: Border.all(color: Colors.green),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(bottom: 5, top: 19),
                    child: Text(
                      " Name",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.black),
                    ),
                  ),

                  CustomTextField(
                    _businessName,
                    password: false,
                    hint: " ",
                    backgroundColor: Colors.white,
                    border: Border.all(color: Colors.green),
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

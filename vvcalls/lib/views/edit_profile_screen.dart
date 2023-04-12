import 'dart:io';

import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import '../routes/routes.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final _formKey = GlobalKey<FormState>();
  //XFile? image;
  File? _file;

  Future pickImage() async {
    //final ImagePicker _picker = ImagePicker();
    //final image = await _picker.pickImage(source: ImageSource.gallery);
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    if (image == null) return;

    File? img = File(image.path);
    setState(() {
      this._file = img;
    });

    /*if (image != null) {
      setState(() {
        _file = File(image!.path);
      });
    }*/
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          SafeArea(
            child: Column(
              children: [
                Container(
                  color: const Color.fromARGB(255, 6, 87, 226),
                  //padding: const EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.arrow_back),
                            color: Colors.white,
                            onPressed: () {
                              Get.toNamed(RoutesClass.getUserSettingsRoute());
                            },
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 90.0),
                            child: Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 5.0, right: 7.0),
                                  child: ClipOval(
                                    child: Image.asset(
                                      'logs.png',
                                      height: 40.0,
                                      width: 40.0,
                                    ),
                                  ),
                                ),
                                Text(
                                  "vChat",
                                  style: GoogleFonts.nunito(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          "Edit Profile",
                          style: GoogleFonts.nunito(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: ClipOval(
                          child: Image.asset(
                            'profile.png',
                            height: 100.0,
                            width: 100.0,
                          ),
                        ),
                      ),
                      Container(
                        width: 170.0,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(5.0),
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            primary: Colors.white,
                            side: const BorderSide(
                                color: Color.fromARGB(255, 6, 87, 226),
                                width: 2), //<-- SEE HERE
                          ),
                          onPressed: () async {
                            pickImage;
                          },
                          child: Row(children: [
                            const Icon(
                              Icons.upload_sharp,
                              color: Color.fromARGB(255, 6, 87, 226),
                            ),
                            Text(
                              'change profile picture',
                              style: GoogleFonts.nunito(
                                  fontSize: 10,
                                  color: const Color.fromARGB(255, 6, 87, 226)),
                            ),
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(10.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Name",
                                    style: GoogleFonts.nunito(fontSize: 15.0),
                                  ),
                                  TextFormField(
                                    scrollPadding: const EdgeInsets.all(10.0),
                                    validator: ValidationBuilder()
                                        .minLength(6)
                                        .maxLength(50)
                                        .build(),
                                    decoration: const InputDecoration(
                                      contentPadding: EdgeInsets.fromLTRB(
                                          20.0, 15.0, 20.0, 15.0),
                                      hintText: "Cameron Williamson",
                                      hintStyle: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: const Color.fromARGB(
                                              255, 6, 87, 226),
                                        ),
                                      ),
                                    ),
                                  ),
                                ]),
                          ),
                          Container(
                            margin: const EdgeInsets.all(10.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Email Address",
                                    style: GoogleFonts.nunito(fontSize: 15.0),
                                  ),
                                  TextFormField(
                                    scrollPadding: const EdgeInsets.all(10.0),
                                    validator: ValidationBuilder()
                                        .email()
                                        .minLength(11)
                                        .maxLength(50)
                                        .build(),
                                    decoration: const InputDecoration(
                                      contentPadding: EdgeInsets.fromLTRB(
                                          20.0, 15.0, 20.0, 15.0),
                                      hintText: "+2340812345678",
                                      hintStyle: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: const Color.fromARGB(
                                              255, 6, 87, 226),
                                        ),
                                      ),
                                    ),
                                  ),
                                ]),
                          ),
                          Container(
                            margin: const EdgeInsets.all(10.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "New Password",
                                    style: GoogleFonts.nunito(fontSize: 15.0),
                                  ),
                                  TextFormField(
                                    obscureText: true,
                                    scrollPadding: const EdgeInsets.all(10.0),
                                    validator: ValidationBuilder()
                                        .minLength(8)
                                        .maxLength(50)
                                        .build(),
                                    decoration: const InputDecoration(
                                      contentPadding: EdgeInsets.fromLTRB(
                                          20.0, 15.0, 20.0, 15.0),
                                      hintText: "new password",
                                      hintStyle: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 6, 87, 226),
                                        ),
                                      ),
                                    ),
                                  ),
                                ]),
                          ),
                          Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(15.0),
                            child: Material(
                              elevation: 5.0,
                              borderRadius: BorderRadius.circular(15.0),
                              color: const Color.fromARGB(255, 6, 87, 226),
                              child: MaterialButton(
                                minWidth:
                                    MediaQuery.of(context).size.width * 0.85,
                                padding: const EdgeInsets.all(10.0),
                                onPressed: () {},
                                child: Text(
                                  "Save Profile",
                                  style: GoogleFonts.nunito(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ]),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

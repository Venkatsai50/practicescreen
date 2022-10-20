// ignore_for_file: implementation_imports, unnecessary_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    bool save = false;
    //TextEditingController _cardcontroller = TextEditingController();
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 24.0),
                      child: Icon(Icons.arrow_back),
                    ),
                    Image.asset(
                      "lib/assets/intersect.png",
                    ),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
                Text(
                  "Add New Card",
                  style: TextStyle(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  "Fill in the all the  *required fields",
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 39, 39, 39),
                  ),
                ),
                SizedBox(
                  height: 41.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: RadioListTile(
                        title: Text(
                          "Credit card",
                          style: TextStyle(
                              fontSize: 15.sp, fontWeight: FontWeight.w500),
                        ),
                        value: "Credit card",
                        groupValue: "Credit card",
                        selected: false,
                        activeColor: Colors.orange,
                        onChanged: (value) {},
                      ),
                    ),
                    Expanded(
                      child: RadioListTile(
                        title: Text(
                          "Debit card",
                          style: TextStyle(
                              fontSize: 15.sp, fontWeight: FontWeight.w500),
                        ),
                        value: "Debit card",
                        groupValue: "0",
                        selected: false,
                        activeColor: Colors.grey,
                        onChanged: (value) {},
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 26.0),
                  height: 252.h,
                  width: 328.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromARGB(255, 189, 185, 185),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(1, 3),
                        blurRadius: 10,
                        color: Color.fromARGB(255, 184, 182, 182),
                      )
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Card number*",
                            style: TextStyle(
                                fontSize: 14.sp, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          textinput(height: 40.h, width: 238.w, words: ""),
                        ],
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Row(
                        children: [
                          Text(
                            "Exp date*",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            width: 165.w,
                          ),
                          Text(
                            "cvv*",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          textinput(height: 40.h, width: 48.w, words: "MM"),
                          SizedBox(
                            width: 14.w,
                          ),
                          textinput(height: 40.h, width: 48.w, words: "YYYY"),
                          SizedBox(
                            width: 115.w,
                          ),
                          textinput(height: 40.h, width: 46.w, words: "CVV"),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Name on card",
                            style: TextStyle(
                                fontSize: 14.sp, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          textinput(height: 40.h, width: 238.w, words: ""),
                        ],
                      )
                    ],
                  ),
                ),
                RadioListTile(
                  title: Text(
                    "Save this card for my purchases",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  value: "male",
                  groupValue: "0",
                  selected: save ? true : false,
                  activeColor: Colors.orange,
                  onChanged: (value) {
                    print(save);
                    setState(() {
                      save = !save;
                    });
                  },
                ),
                SizedBox(
                  height: 78,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 16.0,
                    bottom: 0,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.orange),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Save Card",
                        style: TextStyle(fontSize: 18.sp),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class textinput extends StatelessWidget {
  final double height;
  final double width;
  final String words;

  textinput({
    Key? key,
    required this.height,
    required this.width,
    required this.words,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 10.0),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: words,
          ),
        ),
      ),
    );
  }
}

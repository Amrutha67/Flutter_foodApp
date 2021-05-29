
import 'package:flutter/material.dart';
class Reg extends StatelessWidget {
  TextEditingController name=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController pwd=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: name,
            decoration: InputDecoration(
                labelText: "Name",
                hintText: "Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                )
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: email,
            decoration: InputDecoration(
                labelText: "Email Id",
                hintText: "Email Id",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                )
            ),
          ),

          SizedBox(
            height: 20,
          ),
          TextField(
            obscureText: true,
            controller: pwd,
            decoration: InputDecoration(
                labelText: "Password",
                hintText: "Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                )
            ),
          ),

          SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: RaisedButton(
              color: Colors.deepOrangeAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              ),

              onPressed: (){
                var getname=name.text;
                var getcode=email.text;
                var getnum=pwd.text;
                print(getname);
                print(getcode);
                print(getnum);
              },
              child: Text("Submit",
                style: TextStyle(
                    color: Colors.white
                ),
              ),
            ),
          ),
        ],

      ),


    );
  }
}

import 'package:flutter/material.dart';
class Price extends StatelessWidget {
  TextEditingController name=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          SizedBox(
            height: 30,
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
                print(getname);
              },
              child: Text("Search",
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

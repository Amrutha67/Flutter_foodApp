import 'package:flutter/material.dart';

class Foodf extends StatelessWidget {
  TextEditingController name=TextEditingController();
  TextEditingController category=TextEditingController();
  TextEditingController price=TextEditingController();
  TextEditingController offerp=TextEditingController();

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
            controller: category,
            decoration: InputDecoration(
                labelText: "Food Type",
                hintText: "Food Type",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                )
            ),
          ),

          SizedBox(
            height: 20,
          ),
          TextField(
            controller: price,
            decoration: InputDecoration(
                labelText: "Price",
                hintText: "Price",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                )
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: offerp,
            decoration: InputDecoration(
                labelText: "Offer Price",
                hintText: "Offer Price",
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
                var getcode=category.text;
                var getdes=int.parse(price.text);
                var getnum=int.parse(offerp.text);
                print(getname);
                print(getcode);
                print(getdes);
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

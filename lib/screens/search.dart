import 'package:flutter/material.dart';
class Foodinfo extends StatefulWidget {
  @override
  _FoodinfoState createState() => _FoodinfoState();
}

class _FoodinfoState extends State<Foodinfo> {
  List Name=[];
  List Price=[];
  TextEditingController name=TextEditingController();
  TextEditingController price=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(

      child: SingleChildScrollView(
        child: Container(
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
                    border: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(10)
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
                    border: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(10)
                    )
                ),
              ),

              SizedBox(
                height:20 ,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child:RaisedButton(
                  color: Colors.deepOrangeAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  onPressed: (){
                    var getname=name.text;
                    var getcode=price.text;

                    setState(() {
                      Name.add(getname);
                      Price.add(getcode);

                    });
                  },
                  child: Text("Submit"),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: Name.length==null?0:Name.length,
                itemBuilder:(context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(Name[index]),
                      subtitle: Text("Rs:"+Price[index]),
                      trailing: GestureDetector(
                          onTap: (){
                            setState(( ) {
                              Name.removeAt(index);
                              Price.removeAt(index);
                            });
                          },
                          child: Icon(Icons.delete_outlined,color: Colors.orange,)),
                    ),
                  );
                },)
            ],
          ),
        ),
      ),

    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/src/ui/category/category_screen.dart';

class FieldWidget extends StatelessWidget {
  const FieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.amber,
      child: IconButton(
        onPressed: (){
          Navigator.pop(context, MaterialPageRoute(builder: (context){
            return CategoryScreen();
          }));
        },icon: Icon(CupertinoIcons.back),
      ),
    );
  }
}

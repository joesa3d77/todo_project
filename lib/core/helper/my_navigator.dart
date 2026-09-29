import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class MyNavigator {
 static goTo(BuildContext context, Widget  destination){
    Navigator.push(context, MaterialPageRoute(builder: (_)=>destination ));
  }

}
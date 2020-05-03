import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ResultScreen extends StatelessWidget{
  final bmiModel;
  ResultScreen({this.bmiModel});
  @override
Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 200,
                height: 200,
                child: bmiModel.isNormal ? SvgPicture.asset("assets/images/smile.svg",fit: BoxFit.contain,) : SvgPicture.asset("assets/images/sad.svg",fit: BoxFit.contain,),
              ),
              SizedBox(
                height: 8,
              ),
              Text("Your BMI: ${bmiModel.bmi.round()}", style: TextStyle(color: Colors.red[700], fontSize: 34, fontWeight: FontWeight.w700),),
              Text(" ${bmiModel.comments}", style: TextStyle(color: Colors.grey[700], fontSize: 18, fontWeight: FontWeight.w300),),
              SizedBox(
                height: 16,
              ),
              bmiModel.isNormal ?
              Text("Hurray! Your BMI is Normal.", style: TextStyle(color: Colors.red[700], fontSize: 18, fontWeight: FontWeight.w700),)
              :
              Text("Sorry! Your BMI is not Normal.", style: TextStyle(color: Colors.red[700], fontSize: 18, fontWeight: FontWeight.w700),),
              SizedBox(
                height: 16,
              ),
              Container(
                child: FlatButton.icon(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
                  label: Text("LET'S CALCULATE AGAIN"),
                  textColor: Colors.white,
                  color: Colors.pink,
                ),
                width: double.infinity,
                padding: EdgeInsets.only(left: 16, right: 16),
              ),
            ],
          ),
      ),

          );

  }
}
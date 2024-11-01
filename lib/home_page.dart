import 'package:bmi_calculator/result.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var wtController=TextEditingController();
  var ftController=TextEditingController();
  var inController=TextEditingController();

  //var result="";
  double bmi=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title:
        Text("Calculate Your BMI",style: TextStyle(color: Colors.white),
          ),
      ),
      body:Center(
        child: Container(
          width:300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('BMI',style: TextStyle(
                fontSize: 34,fontWeight:FontWeight.w600
              ),),

              TextField(
                controller: wtController ,
                decoration: InputDecoration(
                  label: Text("Enter your Weight(in Kgs)"),
                  prefixIcon: Icon(Icons.line_weight)
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 21,),
              TextField(
                controller: ftController ,
                decoration: InputDecoration(
                    label: Text("Enter your height(in cm)"),
                    prefixIcon: Icon(Icons.height)
                ),
                keyboardType: TextInputType.number,
              ),
               SizedBox(height: 10,),
              TextField(
                controller: inController ,
                decoration: InputDecoration(
                    label: Text("Enter your height(in Inches)"),
                    prefixIcon: Icon(Icons.height)
                ),
                keyboardType: TextInputType.number,
              ),

              SizedBox(height: 16,),

              ElevatedButton(onPressed: (){

                Navigator.push(context, MaterialPageRoute(builder:(context)=>Result(bmi:bmi)));
                var wt=wtController.text.toString();
                var ft=ftController.text.toString();
                var inch=inController.text.toString();

                if(wt!="" && inch!="")
                  {
                   var iWt=int.parse(wt);
                   var iFt=int.parse(ft);
                   var iInch=int.parse(inch);

                   var tInch=(iFt*12)+iInch;
                   var tCm=tInch*2.54;
                   var tM=tCm/100;

                    setState(() {
                      bmi=iWt/(tM*tM);
                    });

                  }


              },

                child: Text("Calculate"),
              ),
                //Text(result,style: TextStyle(fontSize: 16),
               // )
            ],
          ),
        ),
      ),
    );
  }
}

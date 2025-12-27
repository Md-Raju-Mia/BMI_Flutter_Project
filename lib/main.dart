import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

      ),
      home: const MyHomePage(title: 'My BMI'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();

  var result = "";
  var bgColor = Colors.deepPurple.shade200;
  var msg="";
  void bgChangedBasedOnBMIValue(var BMI){

    if(BMI>25){
      msg = "You are OverWeight!!";
      bgColor= Colors.orange.shade200;
    }else if(BMI<18){
      msg = "You are UnderWeight!!";
      bgColor = Colors.red.shade200;
    }else{
      msg = "You are Healthy";
      bgColor = Colors.green.shade200;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        color: bgColor,
        child: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('BMI', style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w700
                ),),

                SizedBox(height: 21,),

                TextField(
                  controller: wtController,
                  decoration: InputDecoration(
                    label: Text('Enter your Weight(kgs)'),
                    prefixIcon: Icon(Icons.line_weight)
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 11,),
                TextField(
                  controller: ftController,
                  decoration: InputDecoration(
                      label: Text('Enter your Height(Inches'),
                      prefixIcon: Icon(Icons.height)
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 11,),
                TextField(
                  controller: inController,
                  decoration: InputDecoration(
                      label: Text('Enter your Height(in Inches'),
                      prefixIcon: Icon(Icons.height)
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 11,),
                ElevatedButton(onPressed: (){
                  var wt = wtController.text.toString();
                  var ft = ftController.text.toString();
                  var inch = inController.text.toString();

                  if(wt!="" && ft!="" && inch!=""){
                    //BMI Calculation

                    var iWt = int.parse(wt);
                    var iFt = int.parse(ft);
                    var iInch = int.parse(inch);

                    var tInch = (iFt*12) +  iInch;

                    var tCm = tInch*2.54;

                    var tM = tCm/100;

                    var BMI = iWt/(tM*tM);

                    bgChangedBasedOnBMIValue(BMI);


                    setState(() {
                      result = "$msg \nYour BMI is: ${BMI.toStringAsFixed(4)}";
                    });


                  }else{
                    setState(() {
                      result = "Please fill all the required blanks!!";
                    });

                  }

                }, child: Text('Calculate')),

                SizedBox(height: 11,),

                Text(result, style: TextStyle(
                  fontSize: 16,
                ),)
              ],
            ),
          ),
        ),
      )
    );
  }
}

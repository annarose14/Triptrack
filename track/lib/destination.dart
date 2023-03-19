    import 'package:flutter/material.dart';
import 'package:country_state_city_picker/country_state_city_picker.dart';
import 'package:track/main.dart';



class Destination extends StatelessWidget {
  const Destination({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Country State and City Picker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
      
    );
  }
}


class NextPage extends StatelessWidget {
  final List<String> choose;
  

 const NextPage({required this.choose});
 //final List<String>choose;
 
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title:const Text('Select Options')),
      body: ListView.builder(
        itemCount:choose.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(choose[index]),
          );
        },
      ),
    );
  }
}





class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  final List<String> choose = [];



  
  void _navigateToNextPage() {
    

  
    Navigator.push(
      context,
      MaterialPageRoute(
        
        builder: (context) => Choose(),
      ),
    );
  }

  late String countryValue;
  late String stateValue;
  late String cityValue;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Country State and City Picker'),
      ),
      body:  Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 600,
        child: 
         Column(
          children: [
            SelectState(
              onCountryChanged: (value) {
              setState((){
                countryValue = value;
              });
            },
            onStateChanged:(value) {
              setState(() {
                stateValue = value;
              });
            },
             onCityChanged:(value) {
              setState(() {
                cityValue = value;
              });
            },
          
            
            
            ),
            
            // InkWell(
            //   onTap:(){
            //     print('country selected is $countryValue');
            //     print('country selected is $stateValue');
            //     print('country selected is $cityValue');
            //   },
            //   child: Text(' Check')
            // )
            
          ],
        )
      ),
      
       floatingActionButton: FloatingActionButton(
        onPressed: _navigateToNextPage,
        child:const Icon(Icons.arrow_forward),
      ),
    );
  }
}

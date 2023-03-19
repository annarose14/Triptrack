import 'package:flutter/material.dart';
import 'package:open_street_map_search_and_pick/open_street_map_search_and_pick.dart';
import 'package:track/login.dart';


class MyCheckBoxList extends StatefulWidget {
  const  MyCheckBoxList({Key? key}) : super(key: key);
  @override
  _MyCheckBoxListState createState() => _MyCheckBoxListState();
}

class _MyCheckBoxListState extends State<MyCheckBoxList> {
  final List<String> _selectedOptions = [];

  void _onOptionSelected(String option) {
    setState(() {
      if (_selectedOptions.contains(option)) {
        _selectedOptions.remove(option);
      } else {
        _selectedOptions.add(option);
      }
    });
  }





  void _navigateToNextPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NextPage(selectedOptions: _selectedOptions),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text('Select Options')),
      body: ListView(
        children: <Widget>[
          CheckboxListTile(
            title: const Text('museum'),
            value: _selectedOptions.contains('museum'),
            onChanged: (value) => _onOptionSelected('museum'),
          ),
          CheckboxListTile(
            title: const Text('kovalam'),
            value: _selectedOptions.contains('kovalam'),
            onChanged: (value) => _onOptionSelected('kovalam'),
          ),
          CheckboxListTile(
            title: const Text('ponmudi'),
            value: _selectedOptions.contains('ponmudi'),
            onChanged: (value) => _onOptionSelected('ponmudi'),
          ),
            CheckboxListTile(
            title: const Text('veli'),
            value: _selectedOptions.contains('veli'),
            onChanged: (value) => _onOptionSelected('veli'),
            
          ),
           CheckboxListTile(
            title: const Text('neyyar dam'),
            value: _selectedOptions.contains('neyyar dam'),
            onChanged: (value) => _onOptionSelected('eyyar dam'),
            
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _navigateToNextPage,
        child:const Icon(Icons.arrow_forward),
      ),
    );
  }
}



//next page after this

class NextPage extends StatelessWidget {
  final List<String> selectedOptions;
  

 const NextPage({required this.selectedOptions});
 
  getLocation(){
    switch(selectedOptions[0]){
      case 'museum':
      return LatLong(8.5102, 76.9554);
      case 'kovalam':
       return LatLong(8.3988, 76.9820);
       case 'ponmudi':
       return LatLong(8.7599, 77.1169);
       case 'veli':
       return LatLong(8.5172, 76.8829);
       case 'neyyar dam':
       return LatLong(8.5351, 77.1459);

      default:
      return LatLong(8.5102, 76.9554);
    }
    
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title:const Text('Selected Options')),
      body: OpenStreetMapSearchAndPick(
        center: getLocation(),
        buttonColor: Colors.blue,
        buttonText: 'Set Current Location',
        onPicked: (pickedData) {
          print(pickedData.latLong.latitude);
          print(pickedData.latLong.longitude);
          print(pickedData.address);
        
        }),
    );
  }
}

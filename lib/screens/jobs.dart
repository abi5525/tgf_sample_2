import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:tgf_sample/extensions/color.dart';

class JobsPage extends StatelessWidget {
  const JobsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: primaryBlue,
      iconTheme: IconThemeData(
        color: Colors.white
      ),
      title: Text("Jobs").textColor(Colors.white),
      actions: [
        IconButton(onPressed: (){
          showSearch(context: context, delegate: customSearch());
        }, icon: Icon(Icons.search))
      ],
      ),
      
    );
  }
}


class customSearch extends SearchDelegate{
  @override
  List<Widget>? buildActions(BuildContext context) {
    
    return[
      IconButton(onPressed: (){
        query = "";
      }, icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
     return  IconButton(onPressed: (){
      close(context, null);
     }, icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }
}
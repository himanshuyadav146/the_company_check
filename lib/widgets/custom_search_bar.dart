import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../models/Country.dart';
import 'package:substring_highlight/substring_highlight.dart';


class CustomSearch extends StatefulWidget with PreferredSizeWidget {
  @override
  State<CustomSearch> createState() => _CustomSearchState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _CustomSearchState extends State<CustomSearch> {
  // const CustomSearch({Key? key}) : super(key: key);
  Icon customIcon = const Icon(Icons.search);

  Widget customSearchBar = const Text('Search your company',
    textAlign: TextAlign.left, style: TextStyle(
      color: Color.fromRGBO(174, 167, 167, 1),
      fontFamily: 'RobotoRegular',
      fontSize: 12,
      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
      fontWeight: FontWeight.normal,
      height: 1.5 /*PERCENT not supported*/
  ),);

  late List<String> autoCompleteData;

  late TextEditingController controller;

  bool isLoading = false;

  Future fetchAutoCompleteData() async {
    setState(() {
      isLoading = true;
    });

    final String stringData = await rootBundle.loadString("assets/data.json");

    final List<dynamic> json = jsonDecode(stringData);

    final List<String> jsonStringData = json.cast<String>();

    setState(() {
      isLoading = false;
      autoCompleteData = jsonStringData;
    });
  }

  List<Country> countryOptions = <Country>[
    Country(name: 'Africa', size: 30370000),
    Country(name: 'Asia', size: 44579000),
    Country(name: 'Australia', size: 8600000),
    Country(name: 'Bulgaria', size: 110879),
    Country(name: 'Canada', size: 9984670),
    Country(name: 'Denmark', size: 42916),
    Country(name: 'Europe', size: 10180000),
    Country(name: 'India', size: 3287263),
    Country(name: 'North America', size: 24709000),
    Country(name: 'South America', size: 17840000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customSearchBar,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Autocomplete(
                optionsBuilder:(TextEditingValue  textEditingValue){
                  if (textEditingValue.text.isEmpty) {
                    return const Iterable<String>.empty();
                  } else {
                    return autoCompleteData.where((word) => word
                        .toLowerCase()
                        .contains(textEditingValue.text.toLowerCase()));
                  }
                },
              optionsViewBuilder: (context, Function(String) onSelected, options) {
                return Material(
                  elevation: 4,
                  child: ListView.separated(
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) {
                      final option = options.elementAt(index);

                      return ListTile(
                        // title: Text(option.toString()),
                        title: SubstringHighlight(
                          text: option.toString(),
                          term: controller.text,
                          textStyleHighlight: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        subtitle: Text("This is subtitle"),
                        onTap: () {
                          onSelected(option.toString());
                        },
                      );
                    },
                    separatorBuilder: (context, index) => Divider(),
                    itemCount: options.length,
                  ),
                );
              },
              onSelected: (selectedString) {
                print(selectedString);
              },
          fieldViewBuilder:
              (context, controller, focusNode, onEditingComplete) {
                this.controller = controller;
                return TextField(
                  controller: controller,
                  focusNode: focusNode,
                  onEditingComplete: onEditingComplete,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.grey[300]!),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.grey[300]!),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.grey[300]!),
                    ),
                    hintText: "Search Something",
                    prefixIcon: Icon(Icons.search),
                  ),
                );
              }
            )
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    fetchAutoCompleteData();
  }

}

class MySearchDelegate extends SearchDelegate{
  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    throw UnimplementedError();
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    throw UnimplementedError();
  }
  
}

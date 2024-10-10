import 'package:ikea_spare/Backend/SparePart.dart';
import 'package:ikea_spare/Backend/Parts.dart';

class SearchFilter {
  List<SparePart> filteredItems = [];

  

 

}

  

  //void onSearch(String query) {
   // Parts partsInstance = Parts();
   // filteredItems = partsInstance.getSpareParts().where((Parts) => Parts.id.toLowerCase().contains(query.toLowerCase())).toList();
 // }

 /*
 // Filter spare parts by name or id
  static List<SparePart> filterSpareParts(List<SparePart> parts, String query) {
    if (query.isEmpty) return parts; // Return all parts if query is empty
    
    query = query.toLowerCase();
    
    // Filter parts by name or ID
    return parts.where((part) {
      return part.getName.toLowerCase().contains(query) ||
          part.getId.toLowerCase().contains(query);
    }).toList();
  }
 
 
  void runFilter(String enteredKeyword) {
    List<SparePart> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty, we'll display all items
      results = widget.items;
    } else {
      results = widget.items
          .where((item) => item.getName.toLowerCase()
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    setState(() {
      foundItems = results;
    });
  }*/
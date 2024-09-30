import 'package:ikea_spare/SparePart.dart';

class SearchFilter {
  // Filter spare parts by name or id
  static List<SparePart> filterSpareParts(List<SparePart> parts, String query) {
    if (query.isEmpty) return parts; // Return all parts if query is empty
    
    query = query.toLowerCase();
    
    // Filter parts by name or ID
    return parts.where((part) {
      return part.name.toLowerCase().contains(query) ||
          part.id.toLowerCase().contains(query);
    }).toList();
  }
}

 /* void runFilter(String enteredKeyword) {
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
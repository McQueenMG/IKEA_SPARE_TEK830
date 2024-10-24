import 'package:ikea_spare/Backend/SparePart.dart';

class Product {

  final String _id;
  final String _name;
  final String _imageUrl;
  final List<SparePart> _spareParts = [];

  Product(this._id, this._name, this._imageUrl);

  String get getId => _id;
  String get getName => _name;
  String get getImageUrl => _imageUrl;
  List<SparePart> get getSpareParts => _spareParts;

  void addSparePart(SparePart partToAdd) {
    _spareParts.add(partToAdd);
  }

  void addListOfSpareParts(List<SparePart> partsToAdd) {
    _spareParts.addAll(partsToAdd);
  }

  void removeSparePart(SparePart partToRemove) {
    _spareParts.remove(partToRemove);
  }

  void removeListOfSpareParts(List<SparePart> partsToRemove) {
    for(SparePart part in partsToRemove) {
      if(_spareParts.contains(part)) {
        _spareParts.remove(part);
      }
    }
  }

}
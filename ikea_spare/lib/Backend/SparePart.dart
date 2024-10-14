// ignore_for_file: prefer_final_fields

class SparePart {
  String _id = "productID";
  String _name = "defaultName";
  String _description = "defaultDescription";
  String _imageUrl = "https://www.ikea.com/global/assets/logos/brand/ikea.svg";
  int _quantity = 0;

  SparePart(this._id, this._name, this._description, this._imageUrl, this._quantity);

  String get getId => _id;
  String get getName => _name;
  String get getDescription => _description;
  String get getImageUrl => _imageUrl;
  int get getQuantity => _quantity;

  void setQuantity(int quantity) {
    _quantity = quantity;
  }
  
}
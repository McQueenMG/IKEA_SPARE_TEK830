class SparePart {
  String id = "productID";
  String name = "defaultName";
  String description = "defaultDescription";
  String imageUrl = "https://www.ikea.com/global/assets/logos/brand/ikea.svg";
  int quantity = 0;

  SparePart(this.id, this.name, this.description, this.imageUrl, this.quantity);

  String get getId => id;
  String get getName => name;
  String get getDescription => description;
  String get getImageUrl => imageUrl;
  int get getQuantity => quantity;

  void setQuantity(int quantity) {
    this.quantity = quantity;
  }
  
}
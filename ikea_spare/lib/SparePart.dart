class SparePart {
  String name;
  int id;
  String description;
  String imageUrl;
  double price;
  int quantity;

  SparePart({this.name = "defaultName", this.id = 666, this.description = "defaultDesc", this.imageUrl = "https://ikea.sparepartservice.shop/pics/eshop/120.gif", this.price = 0, this.quantity = 0});

  void incrementQuantity() {
    quantity++;
  }

  void addQuantity(int quantityToAdd) {
    quantity += quantityToAdd;
  }

  void removeQuantity(int quantityToRemove) {
    quantity -= quantityToRemove;
  }

}
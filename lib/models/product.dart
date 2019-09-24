class Product {
  String id;
  String name;
  String description;
  String imageFile;

  Product({
    this.id,
    this.name,
    this.description,
    this.imageFile
  });

  factory Product.fromJSON(Map<String, dynamic> parsedJSON) {
    return Product(
      id: parsedJSON['id'],
      name: parsedJSON['name'],
      description: parsedJSON['description'],
      imageFile: parsedJSON['imageFile']
    );
  }
}
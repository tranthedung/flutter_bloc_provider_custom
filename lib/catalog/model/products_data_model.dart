import 'dart:core';

class Product {
  final String name;
  final double price;
  final String imageUrl;

  const Product(
      {required this.name, required this.price, required this.imageUrl});
  static const List<Product> products = [
    Product(name: 'Cosd Smell', price: 2.99, imageUrl: 'https://www.solidbackgrounds.com/images/1200x600/1200x600-bright-green-solid-color-background.jpg'),
    Product(name: 'Control Flow', price: 2.99, imageUrl: 'https://www.solidbackgrounds.com/images/1200x600/1200x600-bright-green-solid-color-background.jpg'),
    Product(name: 'Interpreter', price: 2.99, imageUrl: 'https://e1.pxfuel.com/desktop-wallpaper/860/501/desktop-wallpaper-bright-colored-backgrounds-plain-backgrounds-in-different-colours-thumbnail.jpg'),
    Product(name: 'Recurtment', price: 2.99, imageUrl: 'https://i.pinimg.com/474x/a4/75/1c/a4751c224f785d8d708bf4f8f2405c7e.jpg'),
    Product(name: 'Sprint', price: 2.99, imageUrl: 'https://www.solidbackgrounds.com/images/3508x2480/3508x2480-blue-solid-color-background.jpg'),
    Product(name: 'Heisenhub', price: 2.99, imageUrl: 'https://i.pinimg.com/474x/a4/75/1c/a4751c224f785d8d708bf4f8f2405c7e.jpg'),
    Product(name: 'Spaheti', price: 2.99, imageUrl: 'https://t3.ftcdn.net/jpg/04/71/74/98/360_F_471749803_yryXahMFI6jVdpBzJf2GKpVYrts9f2gM.jpg'),
    Product(name: 'Scope', price: 2.99, imageUrl: 'https://garden.spoonflower.com/c/13945822/p/f/m/dsokOxy1OkwSV1tOLDQ8FY-XogJZDaRoT1rB3c-xQXGQB89MxlY0l-M/Neon%20Yellow%20solid.jpg'),
    Product(name: 'Call back', price: 2.99, imageUrl: 'https://www.sirvisual.com/Attachment/100/5854_32745_Neon%20Yellow%20Principale.jpg'),
    Product(name: 'Closure', price: 2.99, imageUrl: 'https://e0.pxfuel.com/wallpapers/253/435/desktop-wallpaper-plain-yellow-background-for-your-mobile-tablet-explore-solid-neon-colors-solid-color-iphone-thumbnail.jpg'),
    Product(name: 'Automata', price: 2.99, imageUrl: 'https://img.freepik.com/free-photo/abstract-gradient-neon-lights_23-2149279136.jpg'),
    Product(name: 'Code smell', price: 2.99, imageUrl: 'https://img.freepik.com/free-photo/vivid-blurred-colorful-wallpaper-background_58702-2849.jpg'),
    Product(name: 'Off-By-One', price: 2.99, imageUrl: 'https://img.freepik.com/free-photo/vivid-blurred-colorful-wallpaper-background_58702-2886.jpg'),
    Product(name: 'Closure', price: 2.99, imageUrl: 'https://img.freepik.com/free-photo/vivid-blurred-colorful-wallpaper-background_58702-2886.jpg'),
    Product(name: 'Automata', price: 2.99, imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLhD-lFsIZGaq12JhkaZcCsNLkQ_BuNN9L1uVZ0zqTxNMXPhvjNo2qazRbkL3ulK1WZiM&usqp=CAU'),
    Product(name: 'Currying', price: 2.99, imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRa7CJijUGngGQ5rbqGpTfKt3oHaqj5aPgqxzF69B4wSHQqghNJVPUIDmYl4Ls4IRYEoIU&usqp=CAU'),
  ];
  
}

import 'package:gabung2/buku/models/item.dart';
import 'package:flutter/material.dart';
import 'package:gabung2/film/page/home.dart';
import 'package:gabung2/navbar/navbar.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Item> items = [
    Item(
        name: '    Nike Air Zoom GT Cut 2 - Hyper Pink',
        harga: 320000,
        desc: """ ------- """,
        foto:
            "https://throwbackstore.com.au/cdn/shop/files/Nike_Air_Zoom_GT_Cut_2_Pink_DJ6015-604_angle_5000x.jpg?v=1691972041",
        foto2:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7ErzqRIu4EuoeuFx3K0TAD2_aps5kT3MG80w5BBM0raMebcUqrgscJjb8eZ0G3nMPHCY&usqp=CAU",
        id: 0),
    Item(
        name: '    LEBRON XX ASW EP - BLUE LIGHTNING',
        harga: 370000,
        desc: """ ------- """,
        foto:
            "https://www.footlocker.id/media/catalog/product/cache/1384ea813c36abc3a773dd6494b9b881/0/3/03-NIKE-F34KBNIK5-NIKDV1192400-Blue.jpg",
        foto2:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7ErzqRIu4EuoeuFx3K0TAD2_aps5kT3MG80w5BBM0raMebcUqrgscJjb8eZ0G3nMPHCY&usqp=CAU",
        id: 1),
    Item(
        name: '    MB.01 IRIDESCENT - TOXIC',
        harga: 200000,
        desc: """ ------- """,
        foto:
            "https://www.ncrsport.com/berita/wp-content/uploads/2023/10/mb1.png",
        foto2:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7ErzqRIu4EuoeuFx3K0TAD2_aps5kT3MG80w5BBM0raMebcUqrgscJjb8eZ0G3nMPHCY&usqp=CAU",
        id: 2),
    Item(
        name: '    Under Armour Curry Flow 10 - Sour Then Sweet',
        desc: """ ------- """,
        foto:
            "https://images.tokopedia.net/img/cache/500-square/VqbcmM/2022/12/4/fe9598aa-e9a6-4af1-a426-8f5796123c64.jpg",
        foto2:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7ErzqRIu4EuoeuFx3K0TAD2_aps5kT3MG80w5BBM0raMebcUqrgscJjb8eZ0G3nMPHCY&usqp=CAU",
        harga: 299000,
        id: 3),
    Item(
        name: '    Jayson Tatum Tatum 1 - Pink Lemonade',
        desc: """ ------- """,
        foto:
            "https://midwaysports.com/cdn/shop/files/AURORA_DV6208-600_PHCFH001-2000.jpg?v=1685722072&width=2000",
        foto2:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7ErzqRIu4EuoeuFx3K0TAD2_aps5kT3MG80w5BBM0raMebcUqrgscJjb8eZ0G3nMPHCY&usqp=CAU",
        harga: 299000,
        id: 4)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product"),
        backgroundColor: Colors.red,
        foregroundColor: Colors.black,
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
            icon: Icon(Icons.home)),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/cart');
              },
              icon: Icon(Icons.shopping_cart_outlined))
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return Card(
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "/item", arguments: item);
                },
                child: Container(
                  margin: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Image(
                        image: NetworkImage(item.foto),
                        height: 100,
                        width: 100,
                      ),
                      Expanded(child: Text(item.name)),
                      Expanded(
                        child: Text(
                          item.harga.toString(),
                          textAlign: TextAlign.end,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: NavBar(selectedItem: 0),
    );
  }
}

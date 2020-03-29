import 'package:flutter/material.dart';
import './detailproduk.dart';

class ProdukList extends StatefulWidget {
  @override
  _ProdukListState createState() => _ProdukListState();
}

class _ProdukListState extends State<ProdukList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LIST PRODUK")
      ),

      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[

          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  name: "Bunga Tangkai",
                  description: "Bunga pertangkai bisa mencapi harga 3000, bunga dapat dipilih sesuai warna dan jenis yang diinginkan oleh pelanggan",
                  price: 3000,
                  image: "mawar.jpg",
                  star: 5,
                ),
              ));
            },

            child: ProductBox(
              name: "Bunga Tangkai",
              description: "Ini adalah Bunga Tangkai",
              price: 3000,
              image: "mawar.jpg",
              star: 5,
            ),
          ),
          
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  name: "Bucket Bunga",
                  description: "Bucket Bunga biasanya dipesan dan diberikan pada sat acara wisuda atau dibekan kepada pasangan. Di Oniflorist dapat memilih Bukcet Bunga dengan ukuran sesuai keinginan dan dpat memilih jenis bunya yang akan dibungkus juga",
                  price: 35000,
                  image: "1.jpg",
                  star: 1,
                ),
              ));
            },

            child: ProductBox(
              name: "Bucket Bunga",
              description: "Ini adalah Bucket Bunga",
              price: 35000,
              image: "1.jpg",
              star: 1,
            ),
          ),


          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  name: "Vas Bunga",
                  description: "Vas Bunga biasanya digunakan sebagai pajangan dalam ruangan, di Oniflorist menyediakan banyak jenis Vas Bunga dan dengan harga yang bervarian juga",
                  price: 50000,
                  image: "3.jpg",
                  star: 1,
                ),
              ));
            },

            child: ProductBox(
              name: "Vas Bunga",
              description: "Ini adalah Vas Bunga",
              price: 50000,
              image: "3.jpg",
              star: 1,
            ),
          ),

          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  name: "Karangan Bunga",
                  description: "Karangan Bunga biasanya digunakan untuk acara syukuran atau juga memberikan kepada orang yang sedang berduka cita untuk memberikan rasa bela sungkawa, di Oniflorist menyediakan pemesanan karangan bunga dan juga pelanggan dapat memilih ukuran serta jenis bunga yang digunakan ",
                  price: 150000,
                  image: "10.jpg",
                  star: 1,
                ),
              ));
            },

            child: ProductBox(
              name: "Karangan Bunga",
              description: "Ini adalah Karangan Bunga",
              price: 150000,
              image: "10.jpg",
              star: 1,
            ),
          ),

          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  name: "Dekorasi Pernikahan/Ulang Tahun",
                  description: "Dekorasi Pernikahan/Ulang Tahun merupakan proyek terbesar di Oniflorist, pelanggan dapat melakukan pemesanan sesuai lokassi yang akan diberikan dekoras. Harga yang dicapai dalam dekorasi ini tergantung pada luasnya tempat dan properti yang digunakan ",
                  price: 1500000,
                  image: "8.jpg",
                  star: 1,
                ),
              ));
            },

            child: ProductBox(
              name: "Dekorasi Pernikahan/Ulang Tahun",
              description: "Ini adalah Dekorasi Pernikahan/Ulang Tahun",
              price: 1500000,
              image: "8.jpg",
              star: 1,
            ),
          ),
        ],
      )
    );
  }
}

class ProductBox extends  StatelessWidget{
  ProductBox({Key key, this.name, this.description, this.price, this.image, this.star}): super(key: key);

  final String name;
  final String description;
  final int price;
  final String image;
  final int star;

  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset("assets/appimages/" + image, width: 50,),

            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      this.name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(this.description),
                    Text(
                      "Price: " + this.price.toString(),
                      style: TextStyle(color: Colors.blueAccent),
                    ),

                    Row(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(Icons.star, size: 10, color: Colors.deepOrange),
                            Icon(Icons.star, size: 10, color: Colors.deepOrange),
                            Icon(Icons.star, size: 10, color: Colors.deepOrange),
                            Icon(Icons.star, size: 10, color: Colors.orange),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
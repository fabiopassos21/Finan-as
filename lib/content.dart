import 'package:flutter/material.dart';

class conteudo extends StatefulWidget {
  const conteudo({super.key});

  @override
  State<conteudo> createState() => _conteudoState();
}

class _conteudoState extends State<conteudo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244,243, 243, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white12,
        leading: IconButton(onPressed: (){

        }, 
        icon: Icon(Icons.menu),
        color: Colors.black45,
        ),
      ),
      body: SafeArea(
        
        child:Column(
          
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Container(
               
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.vertical(bottom:Radius.circular(20)),

            ),
            padding: EdgeInsets.all(20),
            child: Column(
              
                  crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              
                Text('Find you',style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text('Inspiration',style: TextStyle(
                  color: Colors.white70,
                  fontSize: 40,
                ),
                ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Color.fromRGBO(244, 243, 243, 1),
                borderRadius: BorderRadius.circular(15),
                
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search,color: Colors.black87,),
                  hintText: "Search you're looking for",hintStyle:
                TextStyle(
                  color: Colors.grey, fontSize: 25
                ),
                ),
              ),
            
            ),

             
              ],
          ),

              ),
         
            SizedBox(
              height: 20,
            ),
            Expanded(
              
              child: Container(
                  child: SingleChildScrollView(child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column (
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            
              Text('Promo today',style: TextStyle(color: Colors.black87,
              fontSize: 15,
              fontWeight: FontWeight.bold, ),
               ),
              SizedBox(
                height: 15,
              ),
              
              Container(
                
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal, // IMPORTANTE PRA KRL 
                  children: [
                    promoCard('https://rollersnakes.co.uk/cdn/shop/collections/IG-Square-SummerEss-Socks.jpg?v=1653384182&width=2048','Socks'),
                     promoCard('https://static.rockcity.com.br/public/rockcity/imagens/produtos/camiseta-thrasher-magazine-skate-goat-preto-50424.jpg','Trasher'),
                      promoCard('https://images.tcdn.com.br/img/img_prod/460977/camiseta_masculina_unissex_barfing_eye_skate_olho_skateboarding_preta_ev_84987_1_8555a1abb4ab85d20d3bc0458d85d732.jpg','Shirt'),
                       promoCard('https://cdn.pixabay.com/photo/2023/11/02/09/09/healthy-8360076_1280.jpg','Bike'),
                  ],

                ),
              
              ),
             SizedBox(
                height: 15,
              ),
              Text('Demais Produtos',style: TextStyle(color: Colors.black87,
              fontSize: 15,
              fontWeight: FontWeight.bold, ),
               ),
              SizedBox(
                height: 15,
              ),
                Container(
                
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal, // IMPORTANTE PRA KRL 
                  children: [
                    promoCard('https://dcdn.mitiendanube.com/stores/001/239/000/products/1258619_shape-element-section-8-25-e232a0006_z1_6371719944293556902-7fbeed79ba1ced1a3116710465322859-1024-1024.jpg','Shape'),
                     promoCard('https://secure-static.vans.com.br/medias/sys_master/vans/vans/h82/h32/h00/h00/12094952603678/1004400060002U-02-BASEIMAGE-Midres.jpg','Sneaker'),
                      promoCard('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZRFwkErfI5uWligM7CBv2HZRD66IGOf_Jjg&s','Board'),
                       promoCard('https://cdn.pixabay.com/photo/2023/11/02/09/09/healthy-8360076_1280.jpg','Truck'),
                  ],

                ),
              ),
              SizedBox(
                height: 20,
              ),
            Container(
              height: 150,
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage('https://cdn.awsli.com.br/800x800/1126/1126410/produto/140497894/sticker-bomb-monster-b8e24662.jpg')

                ),
                color: Colors.orange,
                
              ),
              child: Container(
                
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
              begin: Alignment.bottomRight,
              stops: [0.2,0.8],
              colors: [
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.1)
            ])
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child:Padding(padding: EdgeInsets.all(20),
              child: 
              Text('Best Design', style: TextStyle(
                color:Colors.white,fontSize: 20
              ),
              ),
              ),
               
            ),
          ), 
            )
            ],
            ),
            ) 
            ,)
           
            )
              )

        ],
      ) ),
    );
  }
  Widget promoCard(image,texto){
      return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin:EdgeInsets.only(right: 15) ,
          decoration: BoxDecoration(

            color: Colors.orange,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: 
            NetworkImage(image),
            fit: BoxFit.cover
            ),
          
          ),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.bottomRight,
              stops: [0.2,0.8],
              colors: [
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.1)
            ])
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
               child: Padding(padding: EdgeInsets.all(5),
                      child: Text(texto,style: TextStyle(
                        color: Colors.white,fontSize: 18
                      ),
                      ),
               ),
              ) ,
            ),
          ),
          
     
        );
  }
}
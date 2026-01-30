import 'package:flutter/material.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              CircleAvatar(
                child: Stack(
                  alignment: AlignmentGeometry.bottomRight,children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage("https://via.placeholder.com/150"),
                  ),
                  CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.green,
                      child: Icon(Icons.camera_alt,size: 18,color: Colors.white,),
                    ),

                  ),
                ],
                ),
              ),
              const
              SizedBox(height: 15,),
              const Text("OLIVIA Austin",style: TextStyle(fontSize: 22,)
              ),
              const Text("oliviaaustin@gmail.com",style: TextStyle(color:(Colors.grey),),

              ),
              ListView(
                shrinkWrap: true,physics: NeverScrollableScrollPhysics(),
                children: [
                  ListTile(leading: Icon(Icons.person_outline,color: Colors.green,),
                    title: Text("About me",style:TextStyle( color:Colors.black,fontWeight: FontWeight.bold)),
                    trailing: Icon(Icons.arrow_forward_ios,size: 18,),),
                  Divider(thickness: 1,color: Colors.grey[200],indent: 20,endIndent: 20,),
                  ListTile(
                    leading: Icon(Icons.shopping_bag_outlined,color: Colors.green,),
                    title: Text("MY Ordars",style:TextStyle( color:Colors.black,fontWeight: FontWeight.bold)),
                    trailing: Icon(Icons.arrow_forward_ios,size: 18,),
                  ),
                  Divider(thickness: 1,color: Colors.grey[200],indent: 20,endIndent: 20,),
                  ListTile(
                    leading: Icon(Icons.favorite_border,color: Colors.green,),
                    title: Text("MY Favorits",style:TextStyle( color:Colors.black,fontWeight: FontWeight.bold)),
                    trailing: Icon(Icons.arrow_forward_ios,size: 18,),
                  ),
                  Divider(thickness: 1,color: Colors.grey[200],indent: 20,endIndent: 20,),
                  ListTile(
                    leading: Icon(Icons.location_on_outlined,color: Colors.green,),
                    title: Text("MY Address",style:TextStyle( color:Colors.black,fontWeight: FontWeight.bold)),
                    trailing: Icon(Icons.arrow_forward_ios,size: 18,),
                  ),
                  Divider(thickness: 1,color: Colors.grey[200],indent: 20,endIndent: 20,),
                  ListTile(
                    leading: Icon(Icons.credit_card_outlined,color: Colors.green,),
                    title: Text("Credit Card",style:TextStyle( color:Colors.black,fontWeight: FontWeight.bold)),
                    trailing: Icon(Icons.arrow_forward_ios,size: 18,),
                  ),
                  Divider(thickness: 1,color: Colors.grey[200],indent: 20,endIndent: 20,),
                  ListTile(
                    leading: Icon(Icons.account_balance_wallet_outlined,color: Colors.green,),
                    title: Text("Transactions",style:TextStyle( color:Colors.black,fontWeight: FontWeight.bold)),
                    trailing: Icon(Icons.arrow_forward_ios,size: 18,),
                  ),
                  Divider(thickness: 1,color: Colors.grey[200],indent: 20,endIndent: 20,),
                  ListTile(
                    leading: Icon(Icons.notifications_none,color: Colors.green,),
                    title: Text("Notifications",style:TextStyle( color:Colors.black,fontWeight: FontWeight.bold)),
                    trailing: Icon(Icons.arrow_forward_ios,size: 18,),
                  ),
                  Divider(thickness: 1,color: Colors.grey[200],indent: 20,endIndent: 20,),
                  ListTile(
                    leading: Icon(Icons.logout,color: Colors.green,),
                    title: Text("Sign Out",style:TextStyle( color:Colors.black,fontWeight: FontWeight.bold),),

                  ),
                ],
              )
            ],
          ),
        )),
    );
  }
}

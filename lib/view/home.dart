import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon:
              SvgPicture.asset("assets/icons/menu.svg", color: Colors.black45),
          onPressed: () {},
        ),
        title: RichText(
          text: TextSpan(
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(fontWeight: FontWeight.bold),
            children: [
              TextSpan(text: "Food ", style: TextStyle(color: Colors.black)),
              TextSpan(text: "Dot ", style: TextStyle(color: Colors.cyan)),
              TextSpan(text: "Com ", style: TextStyle(color: Colors.black)),
            ],
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset("assets/icons/bell.svg",
                color: Colors.black45),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (Value) {},
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  hintText: "search here",
                  hintStyle: TextStyle(color: Colors.black26)),
            ),
          ),

          // Expanded(
          //   child: GridView.count(
          //     // Create a grid with 2 columns. If you change the scrollDirection to
          //     // horizontal, this produces 2 rows.
          //     crossAxisCount: 2,
          //     // Generate 100 widgets that display their index in the List.
          //     children: List.generate(4, (index) {
          //       return Card(
          //         shape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(15.0),
          //         ),
          //         elevation: 4,
          //         child: Column(
          //           children: [
          //             SizedBox(
          //               height: 10,
          //             ),
          //
          //             Text(
          //               'Item $index',
          //               style: Theme.of(context).textTheme.headline5,
          //             ),
          //
          //           ],
          //         ),
          //       );
          //     }),
          //   ),
          // ),

         Container(
           margin: EdgeInsets.only(bottom: 15),
           padding: EdgeInsets.all(25),
           decoration: BoxDecoration(
             color: Colors.white,
             shape: BoxShape.circle,
             
           ),
           child: Image(
             image:  AssetImage('assets/images/burger.jpg'), fit: BoxFit.cover),
           )



        ],
      ),
    );
  }
}

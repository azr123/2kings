import 'package:flutter/material.dart';
import 'package:housecontractors/Screens/homepage/components/workers.dart';
import 'package:housecontractors/Screens/homepage/components/stories.dart';
import 'package:housecontractors/Screens/homepage/components/searchHome.dart';
import 'package:housecontractors/helper/size_configuration.dart';
import 'Chat/chatMenu.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
              leading: Image.asset(
                "assets/images/logo-black-half.png",
                fit: BoxFit.fitWidth,
              ),
              iconTheme: IconThemeData(color: Colors.black),
              title: Text(
                "Home",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: (kToolbarHeight / 100) * 40,
                ),
              ),
              actions: [
                IconButton(
                  color: Colors.black,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => chatMenu()),
                    );
                  },
                  icon: const Icon(
                    Icons.chat,
                  ),
                ),
                IconButton(
                  color: Colors.black,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SearchHome()),
                    );
                  },
                  icon: const Icon(
                    Icons.search,
                  ),
                ),
              ],
              centerTitle: true,
              elevation: 0,
              backgroundColor: Colors.transparent,
            ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(5),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 2,
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  textDirection: TextDirection.ltr,
                  children: [
                    SizedBox(height: getProportionateScreenHeight(0)),
                    Text(
                      "Stories",
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    Divider(
                      height: getProportionateScreenHeight(20),
                      thickness: 0.1,
                      indent: 0,
                      endIndent: 0,
                      color: Colors.black,
                    ),
                    const Stories(),
                    Divider(
                      height: getProportionateScreenHeight(20),
                      thickness: 0.05,
                      indent: 0,
                      endIndent: 0,
                      color: Colors.black,
                    ),
                    Text(
                      "Home Services",
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    Divider(
                      height: getProportionateScreenHeight(20),
                      thickness: 0.05,
                      indent: 0,
                      endIndent: 0,
                      color: Colors.black,
                    ),
                    Workers(),
                    Card(
                      child: Container(
                        height: getProportionateScreenHeight(160),
                        width: getProportionateScreenWidth(500),
                        child: const Text("Hire a Contractor"),
                        padding:
                            EdgeInsets.all(getProportionateScreenHeight(10)),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(
                              getProportionateScreenWidth(20)))),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}

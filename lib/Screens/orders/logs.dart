import 'package:flutter/material.dart';
import 'package:housecontractors/Screens/Chat/chat_menu.dart';
import 'package:housecontractors/Screens/orders/viewInventoryLog.dart';
import 'package:housecontractors/Screens/orders/viewServicesLog.dart';
import 'package:housecontractors/components/profile_header.dart';
import '../../helper/size_configuration.dart';
import '../../widgets/chat_call_bottom_bar.dart';

class Logs extends StatelessWidget {
  const Logs({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Logs",
          style: TextStyle(
            color: Colors.black,
            fontSize: (kToolbarHeight / 100) * 50,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          ProfileHeader(
            title: title,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: setWidth(2), vertical: setHeight(0)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(
                  thickness: 0.2,
                  color: Colors.black,
                ),
                Text(
                  "Inventory Logs",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: setHeight(2.5),
                  ),
                ),
                Divider(
                  thickness: 0.2,
                  color: Colors.black,
                ),
                GestureDetector(
                  child: SizedBox(
                    height: setHeight(33),
                    child: ViewInventoryLogs(),
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Scaffold(
                        appBar: AppBar(
                          title: Text(
                            "Inventory logs",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: (kToolbarHeight / 100) * 50,
                            ),
                          ),
                          centerTitle: true,
                          elevation: 0,
                          backgroundColor: Colors.transparent,
                        ),
                        body: ViewInventoryLogs(),
                      ),
                    ),
                  ),
                ),
                Divider(
                  thickness: 0.2,
                  color: Colors.black,
                ),
                Text(
                  "Services Logs",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: setHeight(2.5),
                  ),
                ),
                Divider(
                  thickness: 0.2,
                  color: Colors.black,
                ),
                GestureDetector(
                  child: SizedBox(
                    height: setHeight(33),
                    child: ViewServicesLogs(),
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Scaffold(
                        appBar: AppBar(
                          title: Text(
                            "Inventory logs",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: (kToolbarHeight / 100) * 50,
                            ),
                          ),
                          centerTitle: true,
                          elevation: 0,
                          backgroundColor: Colors.transparent,
                        ),
                        body: ViewServicesLogs(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: bottomCallChat(),
    );
  }
}

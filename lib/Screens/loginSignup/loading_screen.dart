import 'package:flutter/material.dart';
import 'package:housecontractors/providers/current_user_provider.dart';
import 'package:provider/provider.dart';
import '../Dashboard/dashboard.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    try {
      loadData();
    } catch (e) {
      print("cannot load data");
    }
    super.initState();
  }

  loadData() async {
    await Future.delayed(const Duration(milliseconds: 0)).then((value) async {
      

      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Dashboard()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.background,
      child: Center(
        child:
            Image.asset('assets/images/logo-black-full.png', fit: BoxFit.fill),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:queuing/accounting_dept.dart';
import 'package:queuing/registrar_dept.dart';

class Transactions extends StatelessWidget {
  const Transactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Transactions'),),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 97, 153, 170), Color.fromARGB(255, 30, 46, 189)])),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[

                SizedBox(
                  height: 15,
                ),
               
                Center(
                  child: Container(
                    height: 1,
                    width: 0.8,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                
                const SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () {
                   Navigator.push(context,
                    MaterialPageRoute(
                    builder: (context) => const Accounting()),
                  );
                  },
                
                  child: Container(
                    height: 53,
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 4,
                              color: Colors.black12.withOpacity(.2),
                              offset: const Offset(2, 2))
                        ],
                        borderRadius: BorderRadius.circular(100)
                            .copyWith(bottomRight: const Radius.circular(0)),
                        gradient: LinearGradient(colors: [
                          Color.fromARGB(255, 184, 0, 156),
                          Color.fromARGB(255, 25, 201, 186)
                        ])),
                    child: Text('Accounting',
                        style: TextStyle(
                            color: Colors.white.withOpacity(.8),
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ),
                ),

                const SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () {
                   Navigator.push(context,
                    MaterialPageRoute(
                    builder: (context) => const Registrar()),
                  );
                  },
                  child: Container(
                    height: 53,
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 4,
                              color: Colors.black12.withOpacity(.2),
                              offset: const Offset(2, 2))
                        ],
                        borderRadius: BorderRadius.circular(100)
                            .copyWith(bottomRight: const Radius.circular(0)),
                        gradient: LinearGradient(colors: [
                          Color.fromARGB(255, 184, 0, 156),
                          Color.fromARGB(255, 25, 201, 186)
                        ])),
                    child: Text('Registrar',
                        style: TextStyle(
                            color: Colors.white.withOpacity(.8),
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
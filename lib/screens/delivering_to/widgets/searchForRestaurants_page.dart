import 'package:flutter/material.dart';
import 'package:login_screen/screens/delivering_to/view.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => DeliveringTo())),
                child: Icon(
                  Icons.arrow_back,
                  size: 40,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 45,
                      ),
                      hintText: 'Search for restaurants or ...',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 15)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

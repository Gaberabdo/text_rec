

import 'package:flutter/material.dart';

import '../models/layout_model.dart';

class LayoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Computer Vision'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return BuildLayoutBody(
            model: LayoutModel.models[index],
          );
        },
        itemCount: LayoutModel.models.length,
      ),
    );
  }
}

class BuildLayoutBody extends StatelessWidget {
  BuildLayoutBody({required this.model});
  LayoutModel model;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 3,
        color: Colors.white,
        borderRadius: BorderRadiusDirectional.circular(12),
        child: ClipRRect(
          borderRadius: const BorderRadiusDirectional.only(
            topEnd: Radius.circular(12),
            topStart: Radius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                model.image,
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
                scale: 1,
              ),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    model.name,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  model.dis,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  height: 40,
                  color: Colors.teal,
                  minWidth: double.infinity,
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return model.widget;
                        },
                      ),
                    );
                  },
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

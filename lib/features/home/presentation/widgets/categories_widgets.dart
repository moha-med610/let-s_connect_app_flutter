import 'package:flutter/material.dart';

class CategoriesWidgets extends StatefulWidget {
  CategoriesWidgets({super.key});

  @override
  State<CategoriesWidgets> createState() => _CategoriesWidgetsState();
}

class _CategoriesWidgetsState extends State<CategoriesWidgets> {
  final List<String> categories = ["All Chats", "Unread Chats"];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 30,
      child: Row(
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      color: index == currentIndex
                          ? Colors.green.shade200
                          : Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      categories[index],
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

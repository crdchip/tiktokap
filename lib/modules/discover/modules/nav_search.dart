import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavSearch extends StatelessWidget {
  const NavSearch({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 25,
        ),
        child: Container(
          height: 50,
          width: size.width,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 15,
            ),
            child: Row(
              children: const [
                Expanded(
                  child: TextField(
                    textAlign: TextAlign.start,
                    textAlignVertical: TextAlignVertical(y: 1),
                    obscureText: false,
                    decoration: InputDecoration(
                      prefixIconColor: Colors.black,
                      prefixIcon: Icon(Icons.search_sharp),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.grey,
                      )),
                      hintText: "Nhập tìm kiếm ...",
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.add_a_photo_outlined)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
    required this.controller,
  });
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Чаты',
            style: TextStyle(
              fontFamily: 'Gilroy',
              fontSize: 32,
              fontWeight: FontWeight.w600,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 8, right: 8, top: 16, bottom: 8),
            child: TextField(
              controller: controller,
              showCursor: false,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(10),
                constraints: const BoxConstraints(maxHeight: 42, maxWidth: 335),
                hintText: 'Поиск',
                hintStyle: const TextStyle(
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color.fromRGBO(157, 183, 203, 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(
                    color: Color.fromRGBO(238, 242, 246, 1),
                  ),
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  size: 24,
                  color: Color.fromRGBO(157, 183, 203, 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide:
                      const BorderSide(color: Color.fromRGBO(238, 242, 246, 1)),
                ),
                fillColor: const Color.fromRGBO(238, 242, 246, 1),
                filled: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

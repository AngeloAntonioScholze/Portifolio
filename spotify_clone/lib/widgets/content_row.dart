import 'package:flutter/material.dart';

class ContentRow extends StatelessWidget {
  const ContentRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Musicas',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 128,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 100,
              itemBuilder: (context, index) {
                return const SizedBox(
                  width: 128,
                  child: Card(
                    color: Colors.green,
                    elevation: 5,
                    child: Text('teste'),
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

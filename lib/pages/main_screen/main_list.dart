import 'package:uidesign1to100/export.dart';

List<Widget> screen = [DayOne(), Demo(), Demo3()];

class MainListScreen extends StatelessWidget {
  const MainListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MasonryGridView.count(
        crossAxisCount: 4,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        itemBuilder: (context, index) {
          return tile(index: index, extent: (index % 5 + 1) * 100);
        },
      ),
    );
  }
}

Widget tile({required int index, required double extent}) {
  return Container(
    height: extent,
    color: Colors.blue[(index % 9 + 1) * 100],
    child: Center(
      child: Text(
        'Tile $index',
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    ),
  );
}

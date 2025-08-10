import 'package:uidesign1to100/export.dart';

List<Widget> screen = [DayOne(), Demo(), Demo3()];

class MainListScreen extends StatelessWidget {
  const MainListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('UI Designs')),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.sp),
        child: MasonryGridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          itemCount: screen.length,
          itemBuilder: (context, index) {
            return tile(
              index: index,
              extent: (index % 3 + 1) * 100,
              onTap:
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => screen[index]),
                  ),
            );
          },
        ),
      ),
    );
  }
}

Widget tile({
  required int index,
  required double extent,
  required VoidCallback onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: extent,
      decoration: BoxDecoration(
        color: Colors.blue[(index % 9 + 1) * 100],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          'Design $index',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    ),
  );
}

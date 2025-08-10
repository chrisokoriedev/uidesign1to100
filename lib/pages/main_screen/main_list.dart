import 'package:uidesign1to100/util/export.dart';

class MainListScreen extends StatelessWidget {
  const MainListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'UI Designs',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: MasonryGridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        padding: const EdgeInsets.all(16.0),
        itemCount: screen.length,
        itemBuilder: (context, index) {
          return ModernUiTile(
            index: index,
            extent: (index % 3 + 1) * 80.0,
            onTap:
                () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => screen[index]),
                ),
          );
        },
      ),
    );
  }
}

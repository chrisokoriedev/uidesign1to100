import 'package:uidesign1to100/util/export.dart';

class MainListScreen extends StatelessWidget {
  const MainListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // A slightly off-white background
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'UI Designs',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
      ),
      body: AnimationLimiter( // Sets up the context for staggered animations
        child: MasonryGridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          padding: const EdgeInsets.all(16.0),
          itemCount: screen.length,
          itemBuilder: (context, index) {
            return AnimationConfiguration.staggeredGrid(
              position: index,
              duration: const Duration(milliseconds: 375),
              columnCount: 2,
              child: ScaleAnimation( // Each tile will scale in
                child: FadeInAnimation( // And fade in
                  child: ModernUiTile(
                    index: index,
                    extent: (index % 3 + 1) * 100.0,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => screen[index]),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ModernUiTile extends StatelessWidget {
  final int index;
  final double extent;
  final VoidCallback onTap;

  const ModernUiTile({
    super.key,
    required this.index,
    required this.extent,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: GlassmorphicContainer(
        width: double.infinity,
        height: extent,
        borderRadius: 15,
        blur: 10, // The blur intensity for the "frosted glass"
        alignment: Alignment.bottomCenter,
        border: 2,
        linearGradient: gradients[index % gradients.length].withOpacity(0.2),
        borderGradient: gradients[index % gradients.length].withOpacity(0.5),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Design $index',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Helper to add opacity to gradients
extension GradientOpacity on LinearGradient {
  LinearGradient withOpacity(double opacity) {
    return LinearGradient(
      colors: colors.map((c) => c.withOpacityN(opacity)).toList(),
      begin: begin,
      end: end,
    );
  }
}
// class MainListScreen extends StatelessWidget {
//   const MainListScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(centerTitle: true, title: const Text('UI Designs')),
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 15.sp),
//         child: MasonryGridView.count(
//           crossAxisCount: 2,
//           mainAxisSpacing: 4,
//           crossAxisSpacing: 4,
//           itemCount: screen.length,
//           itemBuilder: (context, index) {
//             return tile(
//               index: index,
//               extent: (index % 3 + 1) * 100,
//               onTap:
//                   () => Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (_) => screen[index]),
//                   ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// Widget tile({
//   required int index,
//   required double extent,
//   required VoidCallback onTap,
// }) {
//   return GestureDetector(
//     onTap: onTap,
//     child: Container(
//       height: extent,
//       decoration: BoxDecoration(
//         color: Colors.blue[(index % 9 + 1) * 100],
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Center(
//         child: Text(
//           'Design $index',
//           style: TextStyle(color: Colors.white, fontSize: 20),
//         ),
//       ),
//     ),
//   );
// }

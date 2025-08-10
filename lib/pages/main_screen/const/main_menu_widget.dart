import 'package:uidesign1to100/util/export.dart';

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
        blur: 10,
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



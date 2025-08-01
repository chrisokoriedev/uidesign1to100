import 'package:uidesign1to100/export.dart';

List<Widget> screen = [DayOne(), Demo(), Demo3()];

class MainListScreen extends StatelessWidget {
  const MainListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAnimatedList(
          initialItemCount: screen.length,
          itemBuilder: (
            BuildContext context,
            int index,
            Animation<double> animation,
          ) {
            return SlideTransition(
              position: animation.drive(
                Tween<Offset>(
                  begin: const Offset(1, 0),
                  end: Offset.zero,
                ).chain(CurveTween(curve: Curves.easeInOut)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: screen[index],
              ),
            );
          },
        ),
      ],
    );
  }
}

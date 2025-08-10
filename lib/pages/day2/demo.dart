import 'package:uidesign1to100/util/export.dart';

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              child: FlutterLogo(size: 35.sp)
                  .fadeIn(delay: Duration(milliseconds: 900))
                  .pulse(delay: Duration(seconds: 1)),
            ).bounceIn(delay: Duration(milliseconds: 500)),
            Text(
              'Hello World',
              style: Theme.of(context).textTheme.headlineMedium,
            ).fadeIn(delay: Duration(seconds: 3)),
            Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 10,
                  children: [
                    FlutterLogo(size: 20),
                    Text(
                      'chrisokoriedev',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ],
                )
                .bounceIn(delay: Duration(seconds: 3))
                .jello(delay: Duration(seconds: 4)),
          ],
        ),
      ),
    );
  }
}

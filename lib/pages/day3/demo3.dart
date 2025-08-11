import 'package:uidesign1to100/util/export.dart';

import 'screen/main_cntrl.dart';

class Demo3 extends StatefulWidget {
  const Demo3({super.key});

  @override
  State<Demo3> createState() => _Demo3State();
}

class _Demo3State extends State<Demo3> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 3), () {
        if (!mounted) return;
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => const MainControl()),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              spacing: 10.sp,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.flood,
                  size: 30.sp,
                  color: Colors.white,
                ).bounceIn(delay: Duration(milliseconds: 600)),
                Text(
                  'Chrisbites',
                  style: GoogleFonts.abel(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ).fadeInRight(delay: Duration(milliseconds: 800)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

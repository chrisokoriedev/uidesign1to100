import 'package:uidesign1to100/util/export.dart';

import 'screen/main_cntrl.dart';

class Demo3 extends StatelessWidget {
  const Demo3({super.key});

  @override
  Widget build(BuildContext context) {
    Future.microtask(() {
      Future.delayed(Duration(seconds: 2), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const MainControl(),
          ),
        );
      });
    });
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Chrisbites',
              style: GoogleFonts.abel(
                fontSize: 30.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ).fadeIn(delay: Duration(milliseconds: 500)),
          ],
        ),
      ),
    );
  }
}

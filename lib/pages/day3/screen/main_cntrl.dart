import 'package:uidesign1to100/util/export.dart';

final mainTabIndexProvider = StateProvider<int>((ref) => 0);

class MainControl extends ConsumerWidget {
  const MainControl({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(mainTabIndexProvider);
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: screens),
      bottomNavigationBar: ClipRRect(
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(20.sp),
        child: BottomAppBar(
          height: 6.h,
          shadowColor: Appcolor.whiteColor,
          color: Colors.red,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(ref, Icons.home_outlined, 0, currentIndex),
              _buildNavItem(ref, Icons.search_outlined, 1, currentIndex),
              _buildNavItem(ref, Icons.notifications_outlined, 2, currentIndex),
              _buildNavItem(ref, Icons.person_outline, 3, currentIndex),
            ],
          ),
        ),
      ).padSymmetric(horizontal: 15.sp, vertical: 15.sp),
    );
  }

  Widget _buildNavItem(
    WidgetRef ref,
    IconData icon,
    int index,
    int currentIndex,
  ) {
    final isActive = currentIndex == index;
    return GestureDetector(
      onTap: () => ref.read(mainTabIndexProvider.notifier).state = index,
      child: Icon(
        icon,
        color: isActive ? Colors.white : Colors.white.withOpacityN(0.5),
        size: isActive ? 20.sp : 18.sp,
      ),
    );
  }
}

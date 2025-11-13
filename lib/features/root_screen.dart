import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopx/core/theme/app_colors.dart';
import 'package:shopx/features/cart/screens/cart_screen.dart';
import 'home/screens/home_screen.dart';
import 'profile/screens/profile_screen.dart';
import 'search/screens/search_screen.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  late PageController _pageController;
  late List<Widget> _pages;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _pages = const [
      HomeScreen(),
      SearchScreen(),
      CartScreen(),
      ProfileScreen(),
    ];
    _pageController = PageController(initialPage: _selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (index) => setState(() => _selectedIndex = index),
        children: _pages,
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 18.w,
          vertical: 12.h,
        ),
        child: Card(
          elevation: 40,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(38.r),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(38.r),
            child: BottomNavigationBar(
              currentIndex: _selectedIndex,
              onTap: (index) {
                setState(() => _selectedIndex = index);
                _pageController.jumpToPage(index);
              },
              items: [
                _buildNavItem(
                  context,
                  label: "Home",
                  icon: CupertinoIcons.house,
                  activeIcon: CupertinoIcons.house_fill,
                  index: 0,
                ),
                _buildNavItem(
                  context,
                  label: "Search",
                  icon: CupertinoIcons.search,
                  activeIcon: Icons.manage_search,
                  index: 1,
                ),
                _buildCartItem(context, index: 2),
                _buildProfileItem(context, index: 3),
              ],
            ),
          ),
        ),
      ),
    );
  }


  BottomNavigationBarItem _buildNavItem(
      BuildContext context, {
        required String label,
        required IconData icon,
        required IconData activeIcon,
        required int index,
      }) {
    final appColors = Theme.of(context).extension<AppColors>()!;
    final bool isSelected = _selectedIndex == index;

    return BottomNavigationBarItem(
      label: label,
      icon: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: Icon(
          isSelected ? activeIcon : icon,
          key: ValueKey(isSelected),
        ),
      ),
    );
  }


  BottomNavigationBarItem _buildCartItem(BuildContext context,
      {required int index}) {
    final appColors = Theme.of(context).extension<AppColors>()!;
    final bool isSelected = _selectedIndex == index;

    return BottomNavigationBarItem(
      label: "Cart",
      icon: Badge(
        label: Text(
            "5",
            style: TextStyle(
                color: appColors.secondaryColor,
                fontSize: 11,
            ),
        ),
        backgroundColor: Colors.red,
        offset: const Offset(7, -7),
        child: Icon(
          isSelected
              ? CupertinoIcons.cart_fill
              : CupertinoIcons.cart,
          key: ValueKey(isSelected),
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildProfileItem(BuildContext context,
      {required int index}) {
    final appColors = Theme.of(context).extension<AppColors>()!;
    final bool isSelected = _selectedIndex == index;

    return BottomNavigationBarItem(
      label: "Profile",
      icon: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isSelected
                ? appColors.primaryColor
                : Colors.transparent,
            width: 2,
          ),
        ),
        child: const CircleAvatar(
          radius: 13,
          backgroundImage: NetworkImage(
              "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png"),
        ),
      ),
    );
  }
}
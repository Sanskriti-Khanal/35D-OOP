import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedBottomIndex = 0;

  @override
  Widget build(BuildContext context) {
    final Color primaryGreen = const Color(0xFF556B2F);
    final Color secondaryGreen = const Color(0xFF8DAA63);
    final Color surface = Colors.white;
    final Color textPrimary = const Color(0xFF1E1E1E);
    final Color textSecondary = const Color(0xFF7A7A7A);
    final Color divider = const Color(0xFFEAEAEA);

    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _HeaderSection(
                primaryGreen: primaryGreen,
                secondaryGreen: secondaryGreen,
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Top Categories',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: textPrimary,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  decoration: BoxDecoration(
                    color: surface,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 18,
                        offset: const Offset(0, 6),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      _CategoryItem(
                        iconData: Icons.self_improvement,
                        label: 'Healing',
                      ),
                      _CategoryItem(
                        iconData: Icons.timelapse,
                        label: 'Jotish',
                      ),
                      _CategoryItem(
                        iconData: Icons.explore,
                        label: 'Vaastu',
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Popular Services',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: textPrimary,
                        ),
                      ),
                    ),
                    Text(
                      'View all',
                      style: TextStyle(
                        color: primaryGreen,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 12),
              _ServiceTile(
                leadingIcon: Icons.home_work_outlined,
                title: 'Griha Pravesh Puja',
                subtitle: 'Lorem Ipsum is simply dummy text',
                dividerColor: divider,
              ),
              _ServiceTile(
                leadingIcon: Icons.local_fire_department_outlined,
                title: 'Rudri Puja',
                subtitle: 'Lorem Ipsum is simply dummy text',
                dividerColor: divider,
              ),
              _ServiceTile(
                leadingIcon: Icons.volunteer_activism_outlined,
                title: 'Compatibility Test',
                subtitle: 'Lorem Ipsum is simply dummy text',
                dividerColor: divider,
              ),
              _ServiceTile(
                leadingIcon: Icons.school_outlined,
                title: 'Carrer & Education',
                subtitle: 'Lorem Ipsum is simply dummy text',
                dividerColor: divider,
              ),
              _ServiceTile(
                leadingIcon: Icons.self_improvement_outlined,
                title: 'Astachiranjibi Puja',
                subtitle: 'Lorem Ipsum is simply dummy text',
                dividerColor: divider,
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      'Shopping',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: textPrimary,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'View all',
                      style: TextStyle(
                        color: primaryGreen,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                height: 160,
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      width: 220,
                      decoration: BoxDecoration(
                        color: surface,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.05),
                            blurRadius: 12,
                            offset: const Offset(0, 6),
                          ),
                        ],
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/placeholder_${(index % 3) + 1}.jpg',
                          ),
                          fit: BoxFit.cover,
                          onError: (_, __) {},
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (_, __) => const SizedBox(width: 14),
                  itemCount: 6,
                ),
              ),
              const SizedBox(height: 110),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _BottomBar(
        selectedIndex: _selectedBottomIndex,
        onChanged: (value) {
          setState(() => _selectedBottomIndex = value);
        },
      ),
    );
  }
}

class _HeaderSection extends StatelessWidget {
  const _HeaderSection({
    required this.primaryGreen,
    required this.secondaryGreen,
  });

  final Color primaryGreen;
  final Color secondaryGreen;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 210,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [primaryGreen, secondaryGreen],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(28),
              bottomRight: Radius.circular(28),
            ),
          ),
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 4),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Hi, Ramesh',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          "Let's start exploring !",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const _NotificationBell(),
                ],
              ),
              const Spacer(),
              _SearchBar(),
            ],
          ),
        ),
      ],
    );
  }
}

class _NotificationBell extends StatelessWidget {
  const _NotificationBell();

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.18),
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.notifications_none_rounded,
            color: Colors.white,
          ),
        ),
        Positioned(
          right: -2,
          top: -2,
          child: Container(
            height: 16,
            width: 16,
            decoration: const BoxDecoration(
              color: Color(0xFFFF4D4F),
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    );
  }
}

class _SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(28),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 18,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: const TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Search for anything',
          hintStyle: TextStyle(color: Color(0xFF8E8E93)),
          prefixIcon: Icon(Icons.search, color: Colors.black87),
          contentPadding: EdgeInsets.symmetric(vertical: 14),
        ),
      ),
    );
  }
}

class _CategoryItem extends StatelessWidget {
  const _CategoryItem({
    required this.iconData,
    required this.label,
  });

  final IconData iconData;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            color: const Color(0xFFEFF3E6),
            shape: BoxShape.circle,
            border: Border.all(color: const Color(0xFFD8E1CB)),
          ),
          child: Icon(iconData, color: const Color(0xFF768C4A), size: 34),
        ),
        const SizedBox(height: 10),
        Text(
          label,
          style: const TextStyle(
            color: Color(0xFF4F4F4F),
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

class _ServiceTile extends StatelessWidget {
  const _ServiceTile({
    required this.leadingIcon,
    required this.title,
    required this.subtitle,
    required this.dividerColor,
  });

  final IconData leadingIcon;
  final String title;
  final String subtitle;
  final Color dividerColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 56,
                width: 56,
                decoration: const BoxDecoration(
                  color: Color(0xFFEFF3E6),
                  shape: BoxShape.circle,
                ),
                child: Icon(leadingIcon, color: Color(0xFF768C4A)),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF2D2D2D),
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      subtitle,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Color(0xFF8A8A8E),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(height: 1, color: dividerColor, margin: const EdgeInsets.symmetric(horizontal: 16)),
      ],
    );
  }
}

class _BottomBar extends StatelessWidget {
  const _BottomBar({
    required this.selectedIndex,
    required this.onChanged,
  });

  final int selectedIndex;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        child: Container(
          height: 76,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(28),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.07),
                blurRadius: 22,
                offset: const Offset(0, 12),
              ),
            ],
          ),
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _BottomItem(
                icon: Icons.spa_outlined,
                label: 'Home',
                selected: selectedIndex == 0,
                onTap: () => onChanged(0),
              ),
              _BottomItem(
                icon: Icons.settings_outlined,
                label: 'Services',
                selected: selectedIndex == 1,
                onTap: () => onChanged(1),
              ),
              _BottomItem(
                icon: Icons.shopping_bag_outlined,
                label: 'Shop',
                selected: selectedIndex == 2,
                onTap: () => onChanged(2),
              ),
              _BottomItem(
                icon: Icons.person_outline,
                label: 'Profile',
                selected: selectedIndex == 3,
                onTap: () => onChanged(3),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _BottomItem extends StatelessWidget {
  const _BottomItem({
    required this.icon,
    required this.label,
    required this.selected,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final Color active = const Color(0xFF556B2F);
    final Color inactive = const Color(0xFF9E9E9E);

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: SizedBox(
        width: 72,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: selected ? active : inactive, size: 28),
            const SizedBox(height: 6),
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: selected ? active : inactive,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavLink {
  final String title;
  final void Function()? onPressed;

  const NavLink({required this.title, this.onPressed});
}

class NavSection {
  final String name;
  final List<NavLink> links;

  const NavSection({required this.name, required this.links});
}

class NavLinksSection extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  NavLinksSection({super.key, required this.sections});
  final List<NavSection> sections;

  int _getMaxSectionLength() {
    int max = 0;
    for (final e in sections) {
      if (e.links.length > max) max = e.links.length;
    }
    return max;
  }

  @override
  Widget build(BuildContext context) {
    final maxSectionLength = _getMaxSectionLength();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        sections.length,
        (i) => _LinksSection(sections[i], maxLength: maxSectionLength),
      ),
    );
  }
}

class _LinksSection extends StatelessWidget {
  const _LinksSection(this.section, {required this.maxLength});
  final NavSection section;
  final int maxLength;

  @override
  Widget build(BuildContext context) {
    final spacerCount = (maxLength - section.links.length).clamp(0, maxLength);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          section.name,
          style: TextStyle(fontSize: 16.sp + 4, fontWeight: FontWeight.w600),
        ),
        ...List.generate(
          section.links.length,
          (index) => GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: section.links[index].onPressed,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                section.links[index].title,
                style: TextStyle(
                  fontSize: 12.sp + 5,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
        ),
        ...List.generate(spacerCount, (index) => const SizedBox()),
      ].map((e) => SizedBox(height: 20, child: e)).toList(),
    );
  }
}

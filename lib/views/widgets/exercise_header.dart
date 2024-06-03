part of 'widgets.dart';

class ExerciseHeader extends SliverPersistentHeaderDelegate {
  ExerciseHeader({
    required this.title,
    required this.mention,
    required this.totalExp,
    required this.description,
  });

  final String title;
  final String mention;
  final int totalExp;
  final String description;

  @override
  Widget build(
          BuildContext context, double shrinkOffset, bool overlapsContent) =>
      Container(
        padding: const EdgeInsets.all(16.0),
        decoration: const BoxDecoration(
          color: kColorSurface,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20.0),
          ),
          boxShadow: kBannerShadow,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text('$title・'),
                    Text(mention),
                  ],
                ),
                Row(
                  children: [
                    SvgPicture.asset('assets/svgs/exp.svg'),
                    const SizedBox(width: 8.0),
                    const Text('120 Exp'),
                  ],
                ),
              ],
            ),
            Text(description),
          ],
        ),
      );

  @override
  double get maxExtent => 134.0;

  @override
  double get minExtent => 134.0;

  @override
  bool shouldRebuild(covariant ExerciseHeader oldDelegate) =>
      oldDelegate.title != title ||
      oldDelegate.mention != mention ||
      oldDelegate.totalExp != totalExp ||
      oldDelegate.description != description;
}

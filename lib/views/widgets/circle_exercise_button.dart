part of 'widgets.dart';

class CircleExerciseButton extends StatefulWidget {
  const CircleExerciseButton({
    super.key,
    this.onPressed,
    this.svgAsset,
    this.enabled = true,
    this.active = false,
  });

  final VoidCallback? onPressed;
  final String? svgAsset;
  final bool enabled;
  final bool active;

  @override
  State<CircleExerciseButton> createState() => _CircleExerciseButtonState();
}

class _CircleExerciseButtonState extends State<CircleExerciseButton> {
  @override
  Widget build(BuildContext context) => IgnorePointer(
        ignoring: !widget.enabled,
        child: MyFilledButton.circle(
          backgroundColor:
              widget.enabled ? kColorSurface : const Color(0xFFE5E5E5),
          borderColor: widget.enabled ? null : const Color(0xFFAFAFAF),
          radius: 64.0,
          bottomBorderOnly: true,
          bottomBorderWidth: 8.0,
          pressedBottomBorderWidth: 0.0,
          onPressed: widget.onPressed,
          child: widget.svgAsset != null
              ? SvgPicture.asset(
                  'assets/svgs/${widget.svgAsset} ${widget.enabled ? 'enabled' : 'disabled'}.svg',
                )
              : null,
        ),
      );
}

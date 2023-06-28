// ignore_for_file: library_private_types_in_public_api, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'walk_container.dart';

class WalkTextForm extends StatefulWidget {
  final Duration? duration;
  final Curve? curve;
  final List<double>? steps;
  final List<Color>? colors;
  final double? thicken;
  final double? angle;
  final double? width;
  final double? height;
  final bool? reverse;
  final Widget? child;
  final BorderRadius? borderRadius;
  final TileMode? tileMode;
  final Alignment? alignment;
  final SpellCheckConfiguration? spellCheckConfiguration;
  final TextEditingController? controller;
  final InputDecoration? decoration;
  final TextInputType? keyboardType;
  final TextCapitalization? textCapitalization;
  final TextInputAction? textInputAction;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextAlignVertical? textAlignVertical;
  final bool? autofocus;
  final bool? readOnly;
  final bool? showCursor;
  final int? maxLength;
  final bool? enableInteractiveSelection;
  final GestureTapCallback? onTap;
  final FormFieldValidator<String>? validator;
  final FormFieldSetter<String>? onSaved;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onFieldSubmitted;
  final bool? enabled;
  final ScrollPhysics? scrollPhysics;
  final ScrollController? scrollController;
  final FocusNode? focusNode;
  final bool? autovalidate;
  final TextDirection? textDirection;
  final EdgeInsets? scrollPadding;
  final bool? enableSuggestions;
  final bool? autocorrect;
  final SmartDashesType? smartDashesType;
  final SmartQuotesType? smartQuotesType;
  final bool? enableSuggestionsOnUserInteraction;
  final void Function()? onEditingComplete;
  final InputCounterWidgetBuilder? buildCounter;
  final Iterable<String>? autofillHints;
  final Widget Function(BuildContext, EditableTextState)? contextMenuBuilder;
  final TextMagnifierConfiguration? magnifierConfiguration;
  final MaxLengthEnforcement? maxLengthEnforcement;
  final int? maxLines;
  final int? minLines;
  final Color? cursorColor;
  final double? cursorHeight;
  final Radius? cursorRadius;
  final double cursorWidth;
  final bool enableIMEPersonalizedLearning;
  final TextSelectionControls? selectionControls;
  final String? restorationId;
  final bool expands;
  final String? initialValue;
  final List<TextInputFormatter>? inputFormatters;
  final Brightness? keyboardAppearance;
  final MouseCursor? mouseCursor;
  final bool obscureText;
  final String obscuringCharacter;
  final void Function(PointerDownEvent)? onTapOutside;
  final Mode? mode;
  bool cheak;
  final EdgeInsetsGeometry? paddingText;
  WalkTextForm({
    this.cheak = false,
    this.paddingText,
    super.key,
    this.height,
    this.width,
    this.child,
    this.duration,
    this.borderRadius,
    this.steps,
    this.colors,
    this.thicken,
    this.curve,
    this.angle,
    this.reverse,
    this.tileMode,
    this.alignment,
    this.decoration,
    required this.controller,
    this.keyboardType,
    this.textCapitalization,
    this.textInputAction,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textAlignVertical,
    this.autofocus = false,
    this.readOnly = false,
    this.showCursor,
    this.maxLength,
    this.enableInteractiveSelection = true,
    this.onTap,
    FormFieldValidator<String>? validator,
    this.onSaved,
    this.onChanged,
    this.onFieldSubmitted,
    this.enabled,
    this.scrollPhysics,
    this.scrollController,
    required this.focusNode,
    this.autovalidate = false,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.enableSuggestions = true,
    this.autocorrect = true,
    this.smartDashesType,
    this.smartQuotesType,
    this.enableSuggestionsOnUserInteraction = true,
    this.onEditingComplete,
    this.buildCounter,
    this.autofillHints,
    this.contextMenuBuilder,
    this.cursorColor,
    this.cursorHeight,
    this.cursorRadius,
    this.cursorWidth = 2.0,
    this.enableIMEPersonalizedLearning = true,
    this.magnifierConfiguration,
    this.maxLengthEnforcement,
    this.maxLines = 1,
    this.minLines,
    this.restorationId,
    this.expands = false,
    this.initialValue,
    List<TextInputFormatter>? inputFormatters,
    this.keyboardAppearance,
    this.mouseCursor,
    this.obscureText = false,
    this.obscuringCharacter = '•',
    this.onTapOutside,
    this.selectionControls,
    Mode? mode,
    this.spellCheckConfiguration,
    this.textDirection,
  })  : mode = mode ??
            Mode(
              border: Models(
                angle: 360,
                borderRadius: BorderRadius.circular(12),
                colors: [
                  Colors.blue,
                  Colors.cyan.shade100,
                  Colors.lightBlue,
                ],
              ),
              disabledBorder: Models(
                angle: 360,
                borderRadius: BorderRadius.circular(12),
                colors: [
                  Colors.black38,
                ],
              ),
              enabledBorder: Models(
                angle: 360,
                borderRadius: BorderRadius.circular(12),
                colors: [
                  Colors.greenAccent,
                  Colors.green,
                  Colors.lightGreenAccent.shade400
                ],
              ),
              errorBorder: Models(
                angle: 360,
                borderRadius: BorderRadius.circular(12),
                colors: [
                  Colors.pink.shade400,
                  Colors.pink.shade200,
                  Colors.pink.shade300
                ],
              ),
              focusedBorder: Models(
                angle: 360,
                borderRadius: BorderRadius.circular(12),
                colors: [
                  Colors.greenAccent,
                  Colors.green,
                  Colors.lightGreenAccent.shade400
                ],
              ),
              focusedErrorBorder: Models(
                angle: 360,
                borderRadius: BorderRadius.circular(12),
                colors: [
                  const Color.fromARGB(255, 255, 17, 0),
                  Colors.pinkAccent.shade100,
                  Colors.red
                ],
              ),
            ),
        validator = validator ?? ((value) => null),
        inputFormatters =
            inputFormatters ?? [LengthLimitingTextInputFormatter(maxLength)];

  @override
  _WalkTextFormState createState() => _WalkTextFormState();
}

class _WalkTextFormState extends State<WalkTextForm>
    with SingleTickerProviderStateMixin {
  final ValueNotifier<Refresh> _cheak =
      ValueNotifier(Refresh(focusNode: false, validat: false));
  late AnimationController _animationController;
  late Animation<BorderRadius?> _borderRadiusAnimation;

  Models? _mode;
  Models? _oldMode;
  @override
  void initState() {
    super.initState();
    _oldMode = _mode;
    getModel();
    widget.controller!.addListener(getModel);
    widget.focusNode!.addListener(getModel);
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    updateAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Refresh>(
      valueListenable: _cheak,
      builder: (context, value, child) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AnimatedBuilder(
            animation: _borderRadiusAnimation,
            builder: (context, child) => WalkContainer(
              alignment: widget.alignment,
              angle: _mode!.angle,
              borderRadius: _borderRadiusAnimation.value,
              colors: _mode!.colors,
              curve: widget.curve,
              duration: widget.duration,
              key: widget.key,
              reverse: widget.reverse,
              steps: widget.steps ?? widget.steps,
              thicken: widget.thicken,
              tileMode: widget.tileMode,
              child: Padding(
                padding: widget.paddingText ?? const EdgeInsets.all(8.0),
                child: TextFormField(
                  cursorColor: widget.cursorColor,
                  cursorHeight: widget.cursorHeight,
                  cursorRadius: widget.cursorRadius,
                  cursorWidth: widget.cursorWidth,
                  enableIMEPersonalizedLearning:
                      widget.enableIMEPersonalizedLearning,
                  expands: widget.expands,
                  initialValue: widget.initialValue,
                  inputFormatters: widget.inputFormatters,
                  key: widget.key,
                  keyboardAppearance: widget.keyboardAppearance,
                  magnifierConfiguration: widget.magnifierConfiguration,
                  maxLengthEnforcement: widget.maxLengthEnforcement,
                  maxLines: widget.maxLines,
                  minLines: widget.minLines,
                  mouseCursor: widget.mouseCursor,
                  obscureText: widget.obscureText,
                  obscuringCharacter: widget.obscuringCharacter,
                  onEditingComplete: widget.onEditingComplete,
                  onTapOutside: widget.onTapOutside,
                  restorationId: widget.restorationId,
                  selectionControls: widget.selectionControls,
                  spellCheckConfiguration: widget.spellCheckConfiguration,
                  textDirection: widget.textDirection,
                  autofillHints: widget.autofillHints,
                  autovalidateMode: AutovalidateMode.disabled,
                  contextMenuBuilder: widget.contextMenuBuilder,
                  controller: widget.controller,
                  decoration: widget.decoration?.copyWith(
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                      ) ??
                      const InputDecoration(
                          contentPadding: EdgeInsets.all(8),
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          disabledBorder: InputBorder.none),
                  keyboardType: widget.keyboardType,
                  textCapitalization:
                      widget.textCapitalization ?? TextCapitalization.none,
                  textInputAction: widget.textInputAction,
                  style: widget.style,
                  strutStyle: widget.strutStyle,
                  textAlign: widget.textAlign ?? TextAlign.start,
                  textAlignVertical: widget.textAlignVertical,
                  autofocus: widget.autofocus ?? false,
                  readOnly: widget.readOnly ?? false,
                  showCursor: widget.showCursor,
                  maxLength: null,
                  enableInteractiveSelection: widget.enableInteractiveSelection,
                  onTap: widget.onTap,
                  validator: widget.validator,
                  onSaved: widget.onSaved,
                  onChanged: widget.onChanged,
                  onFieldSubmitted: widget.onFieldSubmitted,
                  enabled: widget.enabled,
                  scrollPhysics: widget.scrollPhysics,
                  scrollController: widget.scrollController,
                  focusNode: widget.focusNode,
                  scrollPadding:
                      widget.scrollPadding ?? const EdgeInsets.all(20.0),
                  enableSuggestions: widget.enableSuggestions ?? true,
                  autocorrect: widget.autocorrect ?? true,
                  smartDashesType: widget.smartDashesType,
                  smartQuotesType: widget.smartQuotesType,
                  buildCounter: widget.buildCounter,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 3, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Visibility(
                    visible: (!_cheak.value.validat &&
                        ((widget.autovalidate ?? false) || widget.cheak)),
                    child: Text(
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      widget.validator!(widget.controller?.text) ?? 'ERROR',
                      style: widget.decoration?.errorStyle ??
                          const TextStyle(color: Colors.red, fontSize: 12),
                    ),
                  ),
                ),
                Flexible(
                  child: Visibility(
                    visible: widget.maxLength != null,
                    child: Text(
                      textAlign: TextAlign.right,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      '${widget.controller?.text.length}/${widget.maxLength}',
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void updateAnimation() {
    final tween = BorderRadiusTween(
      begin: _oldMode?.borderRadius,
      end: _mode?.borderRadius,
    );
    _borderRadiusAnimation = tween.animate(_animationController);
    if (!_animationController.isAnimating) {
      _animationController.reset();
    }
    _animationController.forward();
  }

  void getModel() {
    _oldMode = _mode;
    if (widget.focusNode!.hasFocus &&
        widget.validator!(widget.controller!.text) != null) {
      _mode = widget.mode?.focusedErrorBorder;
    } else if (widget.validator!(widget.controller!.text) != null) {
      _mode = widget.mode?.errorBorder;
    } else if (widget.focusNode!.hasFocus) {
      _mode = widget.mode?.focusedBorder;
    } else if (widget.enabled == true) {
      _mode = widget.mode?.border;
    } else if (widget.enabled == false) {
      _mode = widget.mode?.disabledBorder;
    } else {
      _mode = widget.mode?.border;
    }
    _cheak.value = Refresh(
        focusNode: widget.focusNode!.hasFocus,
        validat: widget.validator!(widget.controller?.text) == null);
    _oldMode ??= _mode;
    if (_oldMode != _mode) {
      updateAnimation();
    }
    widget.cheak = false;
  }
}

class Mode {
  final Models? border;
  final Models? focusedBorder;
  final Models? enabledBorder;
  final Models? focusedErrorBorder;
  final Models? errorBorder;
  final Models? disabledBorder;

  Mode({
    this.border,
    this.focusedBorder,
    this.enabledBorder,
    this.focusedErrorBorder,
    this.errorBorder,
    this.disabledBorder,
  });
}

class Models {
  final BorderRadius? borderRadius;
  final List<Color>? colors;
  final double? angle;
  Models({this.borderRadius, this.colors, this.angle});
}

class Refresh {
  bool validat;
  bool focusNode;
  Refresh({required this.focusNode, required this.validat});
}

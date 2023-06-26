import 'package:flutter/material.dart';
import 'package:todo/src/presentation/shared%20resources/palette.dart';

class NewTaskDropdown extends StatefulWidget {
  final String? labelText;
  final BorderRadius borderRadius;
  final List<String> options;
  final void Function(String?) onChanged;
  final Widget? customIcon;
  final TextStyle? textStyle;

  const NewTaskDropdown({
    super.key,
    this.labelText,
    required this.borderRadius,
    required this.options,
    required this.onChanged,
    this.customIcon,
    this.textStyle,
  });

  @override
  State<NewTaskDropdown> createState() => _NewTaskDropdownState();
}

class _NewTaskDropdownState extends State<NewTaskDropdown> {
  bool isDropdownOpen = false;
  String? selectedValue;

  var p = Palette();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: widget.borderRadius,
        color: Colors.white,
        boxShadow: [
          if (isDropdownOpen)
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 4,
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                isDropdownOpen = !isDropdownOpen;
              });
            },
            child: InputDecorator(
              decoration: InputDecoration(
                labelText: widget.labelText,
                border: InputBorder.none,
                focusedBorder: OutlineInputBorder(
                  borderRadius: widget.borderRadius,
                  borderSide: BorderSide(
                    color: isDropdownOpen ? p.primary1 : Colors.transparent,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: widget.borderRadius,
                  borderSide: BorderSide(
                    color: isDropdownOpen ? p.primary1 : Colors.transparent,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    selectedValue ?? '',
                    style: widget.textStyle,
                  ),
                  widget.customIcon ??
                      Icon(
                        isDropdownOpen
                            ? Icons.keyboard_arrow_up
                            : Icons.keyboard_arrow_down,
                      ),
                ],
              ),
            ),
          ),
          if (isDropdownOpen)
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(8.0),
                bottomRight: Radius.circular(8.0),
              ),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: widget.options
                      .map(
                        (value) => ListTile(
                          title: Text(
                            value,
                            style: widget.textStyle,
                          ),
                          onTap: () {
                            setState(() {
                              selectedValue = value;
                              isDropdownOpen = false;
                            });
                            widget.onChanged(value);
                          },
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

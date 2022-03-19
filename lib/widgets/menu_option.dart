// @dart=2.9

// ignore_for_file: prefer_const_constructors

import 'package:aviro_health_app/providers/globals.dart';
import 'package:aviro_health_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animations/animations.dart';
import 'package:provider/provider.dart';

class MenuOptions extends StatefulWidget {
  final String label;
  final String description;
  final IconData icon;
  final Color color;
  final Widget formWidget;
  const MenuOptions({
    Key key,
    @required this.label,
    @required this.icon,
    @required this.color,
    @required this.formWidget,
    this.description,
  }) : super(key: key);

  @override
  State<MenuOptions> createState() => _MenuOptionsState();
}

class _MenuOptionsState extends State<MenuOptions> {
  bool showRegion = false;

  @override
  Widget build(BuildContext context) {
    final globals = Provider.of<Globals>(context);
    onHover(p) {
      setState(() {
        showRegion = !showRegion;
      });
    }

    return MouseRegion(
      cursor: MouseCursor.defer,
      onEnter: onHover,
      onExit: onHover,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        padding: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(widget.icon, color: Colors.white, size:showRegion ? 20: 17),
            if (globals.getsidebarOpened) ...[
              SizedBox(width: 12),
              Text(
                widget.label,
                style: GoogleFonts.comfortaa(
                  color: Colors.white,
                  fontSize: showRegion ? 14 : 12,
                  fontWeight: showRegion ? FontWeight.bold : FontWeight.w600,
                ),
              )
            ],
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'huruf_isyarat_page.dart';
import 'angka_isyarat_page.dart';
import 'kosakata_isyarat_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Tunarungu',
      theme: ThemeData(
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: const Color(0xFFF7F2EC), // krem
      ),
      home: const DashboardPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isTablet = constraints.maxWidth > 600;
        final horizontalPadding = isTablet ? 64.0 : 24.0;
        final buttonWidth = isTablet ? 360.0 : 260.0;
        final buttonHeight = isTablet ? 80.0 : 60.0;
        return Scaffold(
          backgroundColor: const Color(0xFFF7F2EC),
          body: SafeArea(
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 24),
                    Text(
                      'TANGAN\nPINTAR',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                        color: Colors.black,
                        height: 1.1,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.blue,
                        decorationThickness: 2,
                      ),
                    ),
                    const SizedBox(height: 48),
                    _DashboardButton(
                      label: 'HURUF ISYARAT',
                      width: buttonWidth,
                      height: buttonHeight,
                      onTap: () {
                        Navigator.of(
                          context,
                        ).push(_createRoute(const HurufIsyaratPage()));
                      },
                    ),
                    const SizedBox(height: 24),
                    // _DashboardButton(
                    //   label: 'ANGKA ISYARAT',
                    //   width: buttonWidth,
                    //   height: buttonHeight,
                    //   onTap: () {
                    //     Navigator.of(context).push(_createRoute(const AngkaIsyaratPage()));
                    //   },
                    // ),
                    // const SizedBox(height: 24),
                    _DashboardButton(
                      label: 'KOSAKATA ISYARAT',
                      width: buttonWidth,
                      height: buttonHeight,
                      onTap: () {
                        Navigator.of(
                          context,
                        ).push(_createRoute(const KosakataIsyaratPage()));
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

PageRouteBuilder _createRoute(Widget page) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.ease;
      final tween = Tween(
        begin: begin,
        end: end,
      ).chain(CurveTween(curve: curve));
      return SlideTransition(position: animation.drive(tween), child: child);
    },
  );
}

class _DashboardButton extends StatefulWidget {
  final String label;
  final VoidCallback onTap;
  final double width;
  final double height;
  const _DashboardButton({
    required this.label,
    required this.onTap,
    required this.width,
    required this.height,
  });

  @override
  State<_DashboardButton> createState() => _DashboardButtonState();
}

class _DashboardButtonState extends State<_DashboardButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(28),
        onTap: widget.onTap,
        onHighlightChanged: (v) => setState(() => _isPressed = v),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 120),
          width: widget.width,
          height: widget.height,
          decoration: BoxDecoration(
            color: const Color(0xFF9B8353),
            borderRadius: BorderRadius.circular(28),
            boxShadow: _isPressed
                ? [
                    BoxShadow(
                      color: Colors.brown.withOpacity(0.3),
                      blurRadius: 16,
                      offset: const Offset(0, 8),
                    ),
                  ]
                : [],
          ),
          alignment: Alignment.center,
          child: Text(
            widget.label,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
              letterSpacing: 1.2,
            ),
          ),
        ),
      ),
    );
  }
}

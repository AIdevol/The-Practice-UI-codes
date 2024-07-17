import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/constants/text_constants.dart';

class FlipcardExpansion extends StatefulWidget {
  final String frontText;
  final String backText;
  final Color cardColor;
  final double width;
  final double height;
  final TextStyle? frontTextStyle;
  final TextStyle? backTextStyle;

  const FlipcardExpansion({
    super.key,
    required this.frontText,
    required this.backText,
    required this.cardColor,
    this.width = 150,
    this.height = 200,
    this.frontTextStyle,
    this.backTextStyle,
  });

  @override
  _FlipcardExpansionState createState() => _FlipcardExpansionState();
}

class _FlipcardExpansionState extends State<FlipcardExpansion>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool isExpanded = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOutBack),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleExpansion() {
    setState(() {
      isExpanded = !isExpanded;
      if (isExpanded) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final Color textColor =
        theme.brightness == Brightness.dark ? Colors.white : Colors.black;
    return Column(
      children: [
        Text(
          Whoami,
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        Text(
          subtext,
          style: TextStyle(
            color: textColor,
            fontSize: 12,
          ),
        ),
        Gap(25),
        GestureDetector(
          onTap: _toggleExpansion,
          child: AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  width: widget.width,
                  height: widget.height,
                  child: Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.001)
                      ..rotateY(_animation.value * 3.14),
                    child: isExpanded
                        ? Transform(
                            alignment: Alignment.center,
                            transform: Matrix4.identity()..rotateY(3.14),
                            child: _buildExpandedContent(),
                          )
                        : _buildCollapsedContent(),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildCollapsedContent() {
    return Container(
      decoration: BoxDecoration(
        color: widget.cardColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(
          widget.frontText,
          style: widget.frontTextStyle ??
              TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _buildExpandedContent() {
    return Container(
      decoration: BoxDecoration(
        color: widget.cardColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            widget.backText,
            style: widget.backTextStyle ??
                TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

// Updated Card classes
class Card1 extends FlipcardExpansion {
  const Card1({super.key})
      : super(
          frontText: 'Card 1',
          backText: 'This is the first card with some interesting content.',
          cardColor: Colors.blue,
          width: 160,
          height: 220,
        );
}

class Card2 extends FlipcardExpansion {
  const Card2({super.key})
      : super(
          frontText: 'Card 2',
          backText:
              'Here\'s the second card with even more exciting information!',
          cardColor: Colors.green,
          width: 160,
          height: 220,
        );
}

class Card3 extends FlipcardExpansion {
  const Card3({super.key})
      : super(
          frontText: 'Card 3',
          backText: 'Third card with some content that you might find useful.',
          cardColor: Colors.orange,
          width: 160,
          height: 220,
        );
}

class Card4 extends FlipcardExpansion {
  const Card4({super.key})
      : super(
          frontText: 'Card 4',
          backText: 'Fourth card in the grid with important information.',
          cardColor: Colors.purple,
          width: 160,
          height: 220,
        );
}

class Card5 extends FlipcardExpansion {
  const Card5({super.key})
      : super(
          frontText: 'Card 5',
          backText: 'Last but not least, the fifth card with a surprise!',
          cardColor: Colors.red,
          width: 160,
          height: 220,
        );
}

class FlipcardExpansionGrid extends StatelessWidget {
  const FlipcardExpansionGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flipcard Expansion Grid'),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.teal.shade100, Colors.teal.shade300],
          ),
        ),
        child: const Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card1(),
                    SizedBox(width: 20),
                    Card2(),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card3(),
                    SizedBox(width: 20),
                    Card4(),
                  ],
                ),
                SizedBox(height: 20),
                Card5(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

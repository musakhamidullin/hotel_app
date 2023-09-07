import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselWithIndicator extends StatefulWidget {
  const CarouselWithIndicator({super.key, required this.items});

  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }

  final List<Widget> items;
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicator> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Stack(
        children: [
          CarouselSlider(
            items: widget.items,
            carouselController: _controller,
            options: CarouselOptions(
                height: 250,
                autoPlay: true,
                enlargeCenterPage: true,
                enlargeFactor: 0.25,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
          if (widget.items.isNotEmpty)
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: widget.items.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => _controller.animateToPage(entry.key),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: entry.key == 0
                                      ? const Radius.circular(6)
                                      : Radius.zero,
                                  bottomLeft: entry.key == 0
                                      ? const Radius.circular(6)
                                      : Radius.zero,
                                  topRight: widget.items.length - 1 == entry.key
                                      ? const Radius.circular(6)
                                      : Radius.zero,
                                  bottomRight:
                                      widget.items.length - 1 == entry.key
                                          ? const Radius.circular(6)
                                          : Radius.zero)),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: entry.key == 0.0 ? 14.0 : 4.0,
                                right: widget.items.length - 1 == entry.key
                                    ? 14.0
                                    : 4.0,
                                bottom: 4,
                                top: 4),
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black.withOpacity(
                                      _current == entry.key
                                          ? 1
                                          : 1 / (entry.key + 1) / 2)),
                              child: const SizedBox(
                                height: 8,
                                width: 8,
                              ),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
        ],
      ),
    ]);
  }
}

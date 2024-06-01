import 'package:flutter/material.dart';

typedef ItemBuilder = Widget Function(BuildContext context, int index);

typedef ItemPressed<T> = void Function(T index);

class AppGridView extends StatefulWidget {
  final VoidCallback? onScrollEnd;
  final int itemCount;
  final Axis scrollDirection;
  final EdgeInsets? padding;
  final bool reverse;
  final bool shrinkWrap;
  final ScrollPhysics? physics;
  final ItemBuilder itemBuilder;
  final SliverGridDelegate delegate;

  ///indicates that the pagination is loading
  final bool loadingMore;
  const AppGridView(
      {super.key,
      required this.itemCount,
      required this.itemBuilder,
      this.scrollDirection = Axis.vertical,
      this.padding,
      this.reverse = false,
      this.shrinkWrap = false,
      this.physics,
      this.loadingMore = false,
      this.onScrollEnd,
      required this.delegate});

  @override
  State<AppGridView> createState() => _AppGridViewState();
}

class _AppGridViewState extends State<AppGridView> {
  final ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    if (widget.onScrollEnd != null) {
      _scrollController.addListener(() {
        if (_scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent) {
          widget.onScrollEnd?.call();
        }
      });
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: GridView.builder(
            itemCount: widget.itemCount,
            reverse: widget.reverse,
            padding: widget.padding,
            gridDelegate: widget.delegate,
            scrollDirection: widget.scrollDirection,
            controller: _scrollController,
            itemBuilder: widget.itemBuilder,
            shrinkWrap: widget.shrinkWrap,
            physics: widget.physics,
          ),
        ),
        if (widget.loadingMore)
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ),
      ],
    );
  }
}

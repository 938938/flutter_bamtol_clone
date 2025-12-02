import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class GetXListener<T> extends StatefulWidget {
  final Rx<T> stream;
  final Widget child;
  final Function(T) listen;
  final Function()? initCall;
  const GetXListener({
    super.key,
    this.initCall,
    required this.stream,
    required this.listen,
    required this.child,
  });

  @override
  State<GetXListener> createState() {
    stream.listen(listen);
    return _GetXListener();
  }
}

class _GetXListener extends State<GetXListener> {
  @override
  void initState() {
    super.initState();

    if (widget.initCall != null){
      widget.initCall!();
    }
  }
  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}

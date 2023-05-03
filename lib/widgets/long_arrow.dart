import 'package:flutter/material.dart';

import '../utils/colors/colors.dart';

class LongArrow extends StatelessWidget {
  const LongArrow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "1st Year",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          Image.asset("assets/Vector 61.png"),
          // ClipRect(
          //   child: CustomPaint(
          //     size: Size(MediaQuery.of(context).size.width, 700),
          //     painter: ArrowPainter(),
          //   ),
          // ),
          Text(
            "\$4000",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}

// class ArrowPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     /// The arrows usually looks better with rounded caps.
//     final Paint paint = Paint()
//       ..color = Colors.black
//       ..style = PaintingStyle.stroke
//       ..strokeCap = StrokeCap.round
//       ..strokeJoin = StrokeJoin.round
//       ..strokeWidth = 3.0;

//     /// Draw a single arrow.
//     {
//       Path path = Path();
//       path.moveTo(size.width * 0.25, 45);
//       path.relativeCubicTo(0, 0, size.width * 0, 0, size.width * 1, 0);
//       path = ArrowPath.make(path: path);
//       canvas.drawPath(path, paint..color = Colors.blue);

//       final TextSpan textSpan = TextSpan(
//         text: '',
//         style: TextStyle(color: Colors.blue),
//       );
//       final TextPainter textPainter = TextPainter(
//         text: textSpan,
//         textAlign: TextAlign.center,
//         textDirection: TextDirection.ltr,
//       );
//       textPainter.layout(minWidth: size.width);
//       textPainter.paint(canvas, Offset(0, 16));
//     }

//     /// Draw a double sided arrow.
//   }

//   @override
//   bool shouldRepaint(ArrowPainter oldDelegate) => false;
// }

import 'package:flutter/material.dart';
import 'package:internative/core/all_color.dart';

class WhiteButton extends StatelessWidget {
  final String text;
  final IconData iconData;
  final VoidCallback onTap;

  const WhiteButton(
      {Key? key,
      required this.text,
      required this.onTap,
      required this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      borderSide: BorderSide(color: AllColor().darkcolor),
      color: Colors.white,
      onPressed: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              iconData,
              color: AllColor().darkcolor,
            ),
            Expanded(
              child: Center(
                child: Text(
                  text,
                ),
              ),
            ),
            const Icon(null)
          ],
        ),
      ),
    );
  }
}

class BlackButton extends StatelessWidget {
  final String text;
  final IconData iconData;
  final VoidCallback onTap;

  const BlackButton({Key? key, required this.text, required this.onTap, required this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: AllColor().darkcolor,
      onPressed: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              iconData,
              color: Colors.white,
            ),
            Expanded(
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Icon(null)
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants/assets.dart';
class CreateTaskElevatedButton extends StatefulWidget {
  void Function()? onclicked;
  CreateTaskElevatedButton({super.key, required this.onclicked});

  @override
  State<CreateTaskElevatedButton> createState() => _CreateTaskElevatedButtonState();
}
class _CreateTaskElevatedButtonState extends State<CreateTaskElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: widget.onclicked,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(AssetData.floatingActionButtonBackgroundColor),
          fixedSize: const Size(190, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AssetData.listTileBorderRadius),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AssetData.buttonPlusImage),
            const SizedBox(width: 5),
            const Text("Add",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),),
    );
  }
}

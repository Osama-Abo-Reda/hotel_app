import 'package:flutter/material.dart';

Widget customButtonForSocialMedia({
  required String image,
  required String text,
  @required Function()? onTap,
}) =>
    InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 53,
        decoration: BoxDecoration(
          border: Border.all(
            width: .6,
            color: Colors.grey,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              width: 32,
              height: 32,
              image: AssetImage(
                image,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              text,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );

Widget customButtonForSocialMediaSelect() => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        InkWell(
          onTap: () {},
          child: Container(
            width: 84,
            height: 54,
            decoration: BoxDecoration(
              border: Border.all(
                width: .6,
                color: Colors.black12,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.circular(
                12,
              ),
            ),
            child: const Image(
              image: AssetImage(
                'assets/icons/icons8-facebook.png',
              ),
            ),
          ),
        ),
        const Spacer(),
        InkWell(
          onTap: () {},
          child: Container(
            width: 84,
            height: 54,
            decoration: BoxDecoration(
              border: Border.all(
                width: .6,
                color: Colors.black12,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.circular(
                12,
              ),
            ),
            child: const Image(
              image: AssetImage(
                'assets/icons/icons8-google.png',
              ),
            ),
          ),
        ),
        const Spacer(),
        InkWell(
          onTap: () {},
          child: Container(
            width: 84,
            height: 54,
            decoration: BoxDecoration(
              border: Border.all(
                width: .6,
                color: Colors.black12,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.circular(
                12,
              ),
            ),
            child: const Image(
              image: AssetImage(
                'assets/icons/icons8-apple.png',
              ),
            ),
          ),
        ),
        const Spacer(),
      ],
    );

Widget defaultDivider({required String text}) => SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          const Expanded(
            child: Divider(
              height: 9,
              thickness: 1.5,
            ),
          ),
          const SizedBox(
            width: 6,
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black45,
            ),
          ),
          const SizedBox(
            width: 6,
          ),
          const Expanded(
            child: Divider(
              height: 9,
              thickness: 1.5,
            ),
          ),
        ],
      ),
    );

Widget defaultButton({
  required String title,
  Color? color,
  required void Function() onPressed,
}) =>
    Container(
      width: 328,
      height: 53,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(
          26,
        ),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 17,
            letterSpacing: .5,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );

Widget defaultTextFormField({
  required TextEditingController controller,
  required TextInputType keyboardType,
  // required ValueChanged<String> onChanged,
  @required ValueChanged<String>? onSumit,
  required String hint,
  IconData? prefix,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      // onChanged: onChanged,
      onFieldSubmitted: onSumit,
      decoration: InputDecoration(
        filled: true,
        hintText: hint,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            color: Colors.black12,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            color: Colors.black12,
          ),
        ),
        prefixIcon: Icon(
          prefix,
          color: Colors.black,
        ),
        hintStyle: const TextStyle(
          color: Colors.black,
          letterSpacing: 0.3,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );

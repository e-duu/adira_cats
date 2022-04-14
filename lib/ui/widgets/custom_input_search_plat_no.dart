import 'package:adira_cats/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:textfield_tags/textfield_tags.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomInputSearchPlatNo extends StatefulWidget {
  final Function() onPressed;

  CustomInputSearchPlatNo({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<CustomInputSearchPlatNo> createState() =>
      _CustomInputSearchPlatNoState();
}

class _CustomInputSearchPlatNoState extends State<CustomInputSearchPlatNo> {
  double? _distanceToField;
  TextfieldTagsController? _controller;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _distanceToField = MediaQuery.of(context).size.width;
  }

  @override
  void dispose() {
    super.dispose();
    _controller!.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller = TextfieldTagsController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          defaultRadius.r,
        ),
        color: kGreyColor,
      ),
      child: TextFieldTags(
        textfieldTagsController: _controller,
        initialTags: const [],
        textSeparators: const [' ', ','],
        letterCase: LetterCase.normal,
        inputfieldBuilder: (context, tec, fn, error, onChanged, onSubmitted) {
          return ((context, sc, tags, onTagDelete) {
            return TextField(
              controller: tec,
              focusNode: fn,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 18.w,
                  vertical: 18.h,
                ),
                suffixIcon: IconButton(
                  onPressed: widget.onPressed,
                  hoverColor: kTransparent,
                  focusColor: kTransparent,
                  highlightColor: kTransparent,
                  icon: Icon(
                    Icons.search_sharp,
                    size: 25,
                    color: kDarkGreyColor,
                  ),
                ),
                filled: true,
                fillColor: kWhiteColor,
                focusColor: kDarkGreyColor,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    defaultRadius.r,
                  ),
                  borderSide: BorderSide(
                    color: kLigthGrayColor,
                    width: 2.w,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    defaultRadius.r,
                  ),
                  borderSide: BorderSide(
                    color: kDarkGreyColor,
                    width: 2.w,
                  ),
                ),
                isDense: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: kPrimaryColor,
                    width: 3.0,
                  ),
                ),
                helperStyle: primaryTextStyle,
                hintText:
                    _controller!.hasTags ? '' : "Cari unit dari plat nomor ...",
                hintStyle: TextStyle(color: kDarkGreyColor),
                errorText: error,
                prefixIconConstraints:
                    BoxConstraints(maxWidth: _distanceToField! * 0.74),
                prefixIcon: tags.isNotEmpty
                    ? SingleChildScrollView(
                        controller: sc,
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: tags.map((String tag) {
                            return Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20.0),
                                ),
                                color: kDarkGreyColor,
                              ),
                              margin: const EdgeInsets.symmetric(
                                horizontal: 5.0,
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10.0,
                                vertical: 5.0,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    child: Text(
                                      '$tag',
                                      style: TextStyle(
                                        color: kBlackColor,
                                      ),
                                    ),
                                    onTap: () {
                                      print("$tag selected");
                                    },
                                  ),
                                  const SizedBox(
                                    width: 4.0,
                                  ),
                                  InkWell(
                                    child: Icon(
                                      Icons.cancel,
                                      size: 14.0,
                                      color: kWhiteColor,
                                    ),
                                    onTap: () {
                                      onTagDelete(tag);
                                    },
                                  )
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      )
                    : null,
              ),
              onChanged: onChanged,
              onSubmitted: onSubmitted,
            );
          });
        },
      ),
    );
  }
}

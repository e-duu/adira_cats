import 'package:adira_cats/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:textfield_tags/textfield_tags.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomInputTextFieldTags extends StatefulWidget {
  const CustomInputTextFieldTags({Key? key}) : super(key: key);

  @override
  State<CustomInputTextFieldTags> createState() =>
      _CustomInputTextFieldTagsState();
}

class _CustomInputTextFieldTagsState extends State<CustomInputTextFieldTags> {
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
    return Column(
      children: [
        Container(
          height: 50.h,
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin.w,
          ),
          width: double.infinity,
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
            validator: (String tag) {
              if (tag == '000') {
                return 'Mohon Maaf, tidak boleh berisi ini';
              } else if (_controller!.getTags!.contains(tag)) {
                return 'Anda Sudah Menginputnya';
              }
              return null;
            }, // Validator
            inputfieldBuilder:
                (context, tec, fn, error, onChanged, onSubmitted) {
              return ((context, sc, tags, onTagDelete) {
                return TextField(
                  controller: tec,
                  focusNode: fn,
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 18.w,
                      vertical: 15.h,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      hoverColor: kTransparent,
                      focusColor: kTransparent,
                      highlightColor: kTransparent,
                      icon: Icon(
                        Icons.search_sharp,
                      ),
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.yellow,
                        width: 3.0,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.yellow,
                        width: 3.0,
                      ),
                    ),
                    helperStyle: const TextStyle(
                      color: Colors.yellow,
                    ),
                    hintText: _controller!.hasTags ? '' : "Cari Plat Nomor ...",
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
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20.0),
                                  ),
                                  color: Colors.yellow,
                                ),
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 5.0),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 5.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      child: Text(
                                        '$tag',
                                        style: const TextStyle(
                                            color: Colors.white),
                                      ),
                                      onTap: () {
                                        print("$tag selected");
                                      },
                                    ),
                                    const SizedBox(width: 4.0),
                                    InkWell(
                                      child: const Icon(
                                        Icons.cancel,
                                        size: 14.0,
                                        color:
                                            Color.fromARGB(255, 233, 233, 233),
                                      ),
                                      onTap: () {
                                        onTagDelete(tag);
                                      },
                                    )
                                  ],
                                ),
                              );
                            }).toList()),
                          )
                        : null,
                  ),
                  onChanged: onChanged,
                  onSubmitted: onSubmitted,
                );
              });
            },
          ),
        ),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
          ),
          onPressed: () {
            _controller!.clearTags();
          },
          child: const Text('CLEAR TAGS'),
        ),
      ],
    );
  }
}

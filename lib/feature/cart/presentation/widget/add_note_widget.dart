import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_text_style.dart';
import '../../data/model/add_note_model.dart';

class AddNoteWidget extends StatelessWidget {
  const AddNoteWidget({super.key, required this.addNoteModel});

  final AddNoteModel addNoteModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          // color: Colors.red,
          border: Border.all(color: Colors.black12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                height: 22.h,
                width: 22.h,
                child:
                addNoteModel.pathImage == null
                    ? SizedBox()
                    : Image.asset(addNoteModel.pathImage!),
              ),
              SizedBox(width:   addNoteModel.pathImage == null?0:10.w),
              SizedBox(
                // width: MediaQuery.sizeOf(context).width *.50,
                child: FittedBox(
                  child: Text(
                    maxLines: 2,
                    overflow: TextOverflow.clip,
                    addNoteModel.title,
                    style: AppTextStyle.inter16BlackW700.copyWith(fontSize: 15.sp),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: 65.w,
            height: 50.h,
            // color: Colors.red,
            alignment: AlignmentDirectional.centerEnd,
            child: addNoteModel.widget,
          ),
        ],
      ),
    );
  }
}

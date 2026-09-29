import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_task/core/Widgets/custom_svg_wrapper.dart';
import 'package:todo_task/core/utils/app_assets.dart';
import 'package:todo_task/core/utils/app_colors.dart';

class AddTaskView extends StatefulWidget {
  const AddTaskView({super.key});

  @override
  State<AddTaskView> createState() => _AddTaskViewState();
}

class _AddTaskViewState extends State<AddTaskView> {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  String? selectedGroup;

  DateTime? selectedDate;
  TimeOfDay? selectedTime;



  Future<void> selectEndTime() async {

    final date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2030),
    );

    if (date == null) return;


    final time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (time == null) return;

    setState(() {
      selectedDate = date;
      selectedTime = time;
    });
  }


  String get endTimeText {
    if (selectedDate == null || selectedTime == null) {
      return 'End Time';
    }

    final day = selectedDate!.day.toString().padLeft(2, '0');
    final month = selectedDate!.month.toString().padLeft(2, '0');
    final year = selectedDate!.year;

    return '$day/$month/$year    ${selectedTime!.format(context)}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,



      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,

        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            size: 18.sp,
            color: AppColors.black,
          ),
        ),

        centerTitle: true,

        title: Text(
          'Add Task',
          style: TextStyle(
            color: AppColors.black,
            fontSize: 17.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),


      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 10.h,
        ),

        child: Column(
          children: [
           Image(image: AssetImage(AppAssets.flag),
           height: 207.h,
             width: 261.w,
           ),

            Container(
              width: 210.w,
              height: 30.h,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.r),
              ),

              clipBehavior: Clip.antiAlias,

              child: const SizedBox(),



            ),

            SizedBox(height: 25.h),



            TextField(
              controller: titleController,

              style: TextStyle(
                color: AppColors.black,
                fontSize: 13.sp,
              ),

              decoration: InputDecoration(
                hintText: 'Title',

                hintStyle: TextStyle(
                  color: AppColors.grey,
                  fontSize: 12.sp,
                ),

                filled: true,
                fillColor: AppColors.white,

                contentPadding: EdgeInsets.symmetric(
                  horizontal: 14.w,
                  vertical: 15.h,
                ),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14.r),
                  borderSide: BorderSide(
                    color: AppColors.lightGray,
                  ),
                ),

                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14.r),
                  borderSide: BorderSide(
                    color: AppColors.lightGray,
                  ),
                ),

                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14.r),
                  borderSide: BorderSide(
                    color: AppColors.primary,
                  ),
                ),
              ),
            ),

            SizedBox(height: 12.h),



            TextField(
              controller: descriptionController,

              maxLines: 4,

              style: TextStyle(
                color: AppColors.black,
                fontSize: 13.sp,
              ),

              decoration: InputDecoration(
                hintText: 'Description',

                hintStyle: TextStyle(
                  color: AppColors.grey,
                  fontSize: 12.sp,
                ),

                filled: true,
                fillColor: AppColors.white,

                contentPadding: EdgeInsets.symmetric(
                  horizontal: 14.w,
                  vertical: 15.h,
                ),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14.r),
                  borderSide: BorderSide(
                    color: AppColors.lightGray,
                  ),
                ),

                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14.r),
                  borderSide: BorderSide(
                    color: AppColors.lightGray,
                  ),
                ),

                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14.r),
                  borderSide: BorderSide(
                    color: AppColors.primary,
                  ),
                ),
              ),
            ),

            SizedBox(height: 12.h),

            

            Container(
              height: 52.h,

              decoration: BoxDecoration(
                color: AppColors.white,

                borderRadius: BorderRadius.circular(14.r),

                border: Border.all(
                  color: AppColors.lightGray,
                ),
              ),

              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: selectedGroup,

                  isExpanded: true,

                  hint: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 14.w,
                    ),
                    child: Text(
                      'Group',
                      style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 12.sp,
                      ),
                    ),
                  ),

                  icon: Padding(
                    padding: EdgeInsets.only(
                      right: 14.w,
                    ),
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      color: AppColors.black,
                      size: 22.sp,
                    ),
                  ),

                  items: [
                    DropdownMenuItem(
                      value: 'Home',
                      child: Row(
                        children: [
                          Container(
                            width: 30.w,
                            height: 30.w,
                            decoration: BoxDecoration(
                              color: Colors.pink.shade50,
                              borderRadius:
                              BorderRadius.circular(7.r),
                            ),
                            child:  CustomSvgWrapper(path: AppAssets.home)
                          ),

                          SizedBox(width: 12.w),

                          Text(
                            'Home',
                            style: TextStyle(
                              color: AppColors.black,
                              fontSize: 13.sp,
                            ),
                          ),
                        ],
                      ),
                    ),

                    DropdownMenuItem(
                      value: 'Personal',
                      child: Row(
                        children: [
                          Container(
                            width: 30.w,
                            height: 30.w,
                            decoration: BoxDecoration(
                              color: Colors.green.shade50,
                              borderRadius:
                              BorderRadius.circular(7.r),
                            ),
                            child: CustomSvgWrapper(path: AppAssets.personal)
                          ),

                          SizedBox(width: 12.w),

                          Text(
                            'Personal',
                            style: TextStyle(
                              color: AppColors.black,
                              fontSize: 13.sp,
                            ),
                          ),
                        ],
                      ),
                    ),

                    DropdownMenuItem(
                      value: 'Work',
                      child: Row(
                        children: [
                          Container(
                            width: 30.w,
                            height: 30.w,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius:
                              BorderRadius.circular(7.r),
                            ),
                            child:  CustomSvgWrapper(path: AppAssets.work)
                          ),

                          SizedBox(width: 12.w),

                          Text(
                            'Work',
                            style: TextStyle(
                              color: AppColors.black,
                              fontSize: 13.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],

                  onChanged: (value) {
                    setState(() {
                      selectedGroup = value;
                    });
                  },
                ),
              ),
            ),

            SizedBox(height: 12.h),



            InkWell(
              onTap: selectEndTime,

              borderRadius: BorderRadius.circular(14.r),

              child: Container(
                width: double.infinity,
                height: 52.h,

                decoration: BoxDecoration(
                  color: AppColors.white,

                  borderRadius: BorderRadius.circular(14.r),

                  border: Border.all(
                    color: AppColors.lightGray,
                  ),
                ),

                padding: EdgeInsets.symmetric(
                  horizontal: 14.w,
                ),

                child: Row(
                  children: [

                    Container(
                      width: 30.w,
                      height: 30.w,

                      decoration: BoxDecoration(
                        color: Colors.green.shade50,
                        borderRadius:
                        BorderRadius.circular(7.r),
                      ),

                      child: CustomSvgWrapper(path: AppAssets.unlock)
                    ),

                    SizedBox(width: 12.w),

                    Text(
                      endTimeText,
                      style: TextStyle(
                        color: selectedDate == null
                            ? AppColors.grey
                            : AppColors.black,
                        fontSize: 12.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 18.h),



            SizedBox(
              width: double.infinity,
              height: 48.h,

              child: ElevatedButton(
                onPressed: () {

                  if (titleController.text
                      .trim()
                      .isEmpty) {
                    return;
                  }



                  Navigator.pop(context);
                },

                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,

                  elevation: 4,

                  shadowColor: AppColors.primary,

                  shape: RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.circular(13.r),
                  ),
                ),

                child: Text(
                  'Add Task',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),

            SizedBox(height: 15.h),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();

    super.dispose();
  }
}
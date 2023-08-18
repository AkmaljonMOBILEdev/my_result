import 'package:exam_repo_n8/providers/user_providers/user_provider.dart';
import 'package:exam_repo_n8/utils/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../utils/constants.dart';

class RoleChooser extends StatefulWidget {
  const RoleChooser({super.key});

  @override
  State<RoleChooser> createState() => _RoleChooserState();
}

class _RoleChooserState extends State<RoleChooser> {
  int theIndex = -1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65.h,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.09.w, vertical: 10.h),
        scrollDirection: Axis.horizontal,
        itemCount: roles.length,
        separatorBuilder: (context, index){
          return 20.bw;
        },
        itemBuilder: (context, index){
            return GestureDetector(
              onTap: (){
                context.read<UserProvider>().setUserRole(roles[index], index);
                setState(() {
                  theIndex=index;
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                decoration: BoxDecoration(
                  color: theIndex==index?Colors.green:Colors.blueGrey,
                  borderRadius: BorderRadius.circular(16.r),
                  border: Border.all(
                      color: Colors.indigoAccent,
                      width: 1.w
                  ),

                ),
                child: Text(roles[index],style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Colors.white, fontWeight: FontWeight.w700
                ),),
              ),
            );
          })


    );
  }
}

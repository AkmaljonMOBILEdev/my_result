import 'package:exam_repo_n8/data/models/user_model/user_model.dart';
import 'package:exam_repo_n8/providers/user_providers/user_provider.dart';
import 'package:exam_repo_n8/ui/users_screen/widgets/main_button.dart';
import 'package:exam_repo_n8/ui/users_screen/widgets/text_field.dart';
import 'package:exam_repo_n8/utils/icons.dart';
import 'package:exam_repo_n8/utils/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../widgets/role_chooser.dart';

class AddOrUpdateScreen extends StatefulWidget {
  const AddOrUpdateScreen({super.key, this.userModel});
  final UserModel? userModel;

  @override
  State<AddOrUpdateScreen> createState() => _AddOrUpdateScreenState();
}

class _AddOrUpdateScreenState extends State<AddOrUpdateScreen> {

  @override
  void initState() {
    if(widget.userModel!=null){
      context.read<UserProvider>().setInitialValues(widget.userModel!);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.userModel!=null?"Update":"Add"),
      ),
      body: WillPopScope(
        onWillPop: ()async{
          context.read<UserProvider>().clearParameters();
          return true;
        },
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width*.7.w,
                  height: MediaQuery.of(context).size.height*.3.h,
                  child: Lottie.asset(AppIcons.user)),
              UserTextField(hintText: "First name", controller: context.read<UserProvider>().firstnameController),
              UserTextField(hintText: "Last name", controller: context.read<UserProvider>().lastnameController),
              UserTextField(hintText: "Age", controller: context.read<UserProvider>().ageController, isAge: true,),
              const Center(child: RoleChooser()),
              (MediaQuery.of(context).size.height*.09).bh,
              UserButton(title: widget.userModel!=null?"Update":"Add", onTap: (){
                if(widget.userModel!=null){
                  context.read<UserProvider>().update(context: context, userModel: widget.userModel!);
                }else{
                  context.read<UserProvider>().add(context: context);
                }
              })
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:exam_repo_n8/data/models/user_model/user_model.dart';
import 'package:exam_repo_n8/providers/user_providers/user_provider.dart';
import 'package:exam_repo_n8/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Users"),
        actions: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context, RouteNames.addOrUpdate);
          }, icon: Icon(Icons.add))
        ],
      ),
      body: StreamBuilder<List<UserModel>>(
        stream: context.read<UserProvider>().getAllUsers(),
        builder: (context, snapshot){
          if(snapshot.hasData){
           return snapshot.data!.isNotEmpty
               ? ListView(
             children: List.generate(snapshot.data!.length, (index){
               UserModel user = snapshot.data![index];
               return ListTile(
                 onTap: (){
                   Navigator.pushNamed(context, RouteNames.addOrUpdate,arguments: user);
                 },
                 title: Text("${user.firstname} ${user.lastname}"),
                 subtitle: RichText(text: TextSpan(
                     text: "Role:  ",
                     style: Theme.of(context).textTheme.titleMedium!.copyWith(
                         color: Colors.red, fontWeight: FontWeight.w700
                     ),
                     children: [
                       TextSpan(
                           text: user.userRole,
                           style: Theme.of(context).textTheme.titleMedium!.copyWith(
                               color: Colors.indigoAccent, fontWeight: FontWeight.w700
                           )
                       )
                     ]
                 )),
                 leading: RichText(text: TextSpan(
               text: "Age: ",
                   style: Theme.of(context).textTheme.titleMedium!.copyWith(
                       color: Colors.black, fontWeight: FontWeight.w700
                   ),
                   children: [
                     TextSpan(
                         text: user.age.toString(),
                         style: Theme.of(context).textTheme.titleMedium!.copyWith(
                             color: Colors.indigoAccent, fontWeight: FontWeight.w700
                         )
                     )
                   ]
               )),
                 // leading: Text((index+1).toString(),style: Theme.of(context).textTheme.titleLarge!.copyWith(
                 //   color: Colors.green, fontWeight: FontWeight.w600
                 // ),),
                 trailing: IconButton(
                   onPressed: (){
                     context.read<UserProvider>().delete(context: context, model: user);
                   },
                   icon: Icon(Icons.delete, color: Colors.red,),
                 ),
               );
             }),
           )
               : const Center(child: Text("Empty data!"),);

          }else if(snapshot.hasError){
            return const Center(child: Text(""),);
          }
          return const Center(child: CircularProgressIndicator(),);
        },
      ),
    );
  }
}

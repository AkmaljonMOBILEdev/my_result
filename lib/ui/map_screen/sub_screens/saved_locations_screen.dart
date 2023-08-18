import 'package:exam_repo_n8/data/models/user_address/user_address.dart';
import 'package:exam_repo_n8/providers/map_providers/saved_address_provider.dart';
import 'package:exam_repo_n8/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SavedLocationsScreen extends StatelessWidget {
  const SavedLocationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Saved Locations"),
      ),
      body: Consumer<SavedListProvider>(
        builder: (context, provider, child){
          return ListView(
            children: List.generate(provider.addresses.length, (index){
              UserAddress address = provider.addresses[index];
              return ListTile(
                onTap: (){

                },
                leading: Text((index+1).toString()),
                title: RichText(text: TextSpan(
                  text: "Title: ",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.w800, color: AppColors.black
                        ),
                    children: [
                          TextSpan(
                            text: address.title,
                            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              color: Colors.indigoAccent, fontWeight: FontWeight.w500
                            )
                          )
                        ]
                )),
                subtitle: RichText(text: TextSpan(
                    text: "Address: ",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.w800, color: AppColors.black
                    ),
                    children: [
                      TextSpan(
                          text: address.address,
                          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                              color: Colors.black, fontWeight: FontWeight.w400
                          )
                      )
                    ]
                )),
                trailing: IconButton(
                  onPressed: (){
                    context.read<SavedListProvider>().deleteUserAddress(address.id!);
                  }, icon: Icon(Icons.delete, color: Colors.red,),
                ),
                // subtitle: Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     RichText(text: TextSpan(
                //       text: "Lat: ",
                //       style: Theme.of(context).textTheme.titleMedium!.copyWith(
                //         fontWeight: FontWeight.w800, color: AppColors.black
                //       ),
                //       children: [
                //         TextSpan(
                //           text: address.lat.toString(),
                //           style: Theme.of(context).textTheme.titleMedium!.copyWith(
                //             color: Colors.indigoAccent, fontWeight: FontWeight.w500
                //           )
                //         )
                //       ]
                //     )),
                //     RichText(text: TextSpan(
                //       text: "Lon: ",
                //       style: Theme.of(context).textTheme.titleMedium!.copyWith(
                //         fontWeight: FontWeight.w800, color: AppColors.black
                //       ),
                //       children: [
                //         TextSpan(
                //           text: address.long.toString(),
                //           style: Theme.of(context).textTheme.titleMedium!.copyWith(
                //             color: Colors.indigoAccent, fontWeight: FontWeight.w500
                //           )
                //         )
                //       ]
                //     )),
                //   ],


              );
            }),
          );
        },
      ),
    );
  }
}

import 'package:exam_repo_n8/data/models/country_model/country_model.dart';
import 'package:exam_repo_n8/utils/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CountryHolder extends StatelessWidget {
  const CountryHolder({super.key, required this.countryModel});

  final CountryModel countryModel;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height / 2;
    double width = MediaQuery.of(context).size.width * .7;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
      height: height.h,
      width: width.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24.r),
          border: Border.all(color: Colors.indigoAccent, width: 2.w)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: (height * .6).h,
            width: (width * 2.5).w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
            ),
            clipBehavior: Clip.antiAlias,
            child: Image.network(countryModel.flags.png),
          ),
          12.bh,
          Center(
            child: Text(
              countryModel.nameModel.official,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Colors.indigoAccent, fontWeight: FontWeight.w700),
            ),
          ),
          16.bh,
          RichText(
              text: TextSpan(
                  text: "Population: ",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w600),
                  children: [
                TextSpan(
                    text: countryModel.population.toString(),
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.indigoAccent,
                        fontWeight: FontWeight.w700))
              ])),
          RichText(
              text: TextSpan(
                  text: "Capital: ",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w600),
                  children: [
                TextSpan(
                    text: countryModel.capital.first,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.indigoAccent,
                        fontWeight: FontWeight.w700))
              ])),
          RichText(
              text: TextSpan(
                  text: "Continent: ",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w600),
                  children: [
                TextSpan(
                    text: countryModel.continents.first,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.indigoAccent,
                        fontWeight: FontWeight.w700))
              ])),
        ],
      ),
    );
  }
}

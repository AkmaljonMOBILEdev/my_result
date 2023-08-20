import 'package:exam_repo_n8/data/models/country_model/country_model.dart';
import 'package:exam_repo_n8/data/status/form_status.dart';
import 'package:exam_repo_n8/providers/country_providers/country_provider.dart';
import 'package:exam_repo_n8/ui/countries_screen/widgets/country_holder.dart';
import 'package:exam_repo_n8/utils/loader_utils/custom_circular.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CountriesScreen extends StatelessWidget {
  const CountriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<CountryModel> countries = context.watch<CountryProvider>().countries;
    return Scaffold(
      appBar: AppBar(
        title: Text("Countries"),
      ),
      body: Stack(
        children: [
          ListView(
            children: List.generate(countries.length, (index) {
              CountryModel country = countries[index];
              return CountryItemHolder(countryModel: country);
            }),
          ),
          Visibility(
              visible:
                  context.watch<CountryProvider>().status == FormStatus.loading,
              child: const Center(child: CustomCircularProgressIndicator()))
        ],
      ),
    );
  }
}

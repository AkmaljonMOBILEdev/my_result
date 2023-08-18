import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../utils/constants.dart';
import '../models/country_model/country_model.dart';
import '../models/geocoding/geocoding.dart';
import '../models/universal_data.dart';

class ApiService {

  final dio = Dio(BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: Duration(seconds: TimeoutConstants.connectTimeout),
      receiveTimeout: Duration(seconds: TimeoutConstants.receiveTimeout),
      sendTimeout: Duration(seconds: TimeoutConstants.sendTimeout)));

  ApiService() {
    _init();
  }

  _init() {
    dio.interceptors.add(
      InterceptorsWrapper(
        onError: (error, handler) async {
          debugPrint("Error occurred:${error.message} and ${error.response}");
          return handler.next(error);
        },
        onRequest: (requestOptions, handler) async {
          debugPrint("query sent :${handler.isCompleted}");
          return handler.next(requestOptions);
        },
        onResponse: (response, handler) async {
          debugPrint("response here :${handler.isCompleted}");
          return handler.next(response);
        },
      ),
    );
  }

  Future<UniversalData> getAllCountries() async {
    try {
      Response response = await dio.get("/v3.1/all");
      if (response.statusCode == 200) {
        // debugPrint("IF Successfully: ${response.data}");
        return UniversalData(
          data: (response.data as List?)
                  ?.map((e) => CountryModel.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              [],
        );
      }
      return UniversalData(error: "Other errors");
    } on DioException catch (e) {
      return UniversalData(error: e.error.toString());
    } catch (e) {
      return UniversalData(error: e.toString());
    }
  }

  Future<UniversalData> getAddress({
    required LatLng latLng,
    required String kind,
    required String lang,
  }) async {
    Response response;
    try {
      response = await dio.get(
        '$yandexUrl/1.x/',
        queryParameters: {
          "apikey": apiKey,
          "geocode": "${latLng.longitude}, ${latLng.latitude}",
          "lang": lang,
          "format": "json",
          "kind": kind,
          "rspn": "1",
          "results": "1",
        },
      );

      if (response.statusCode == 200) {
        String text = 'Unknown area';
        Geocoding geocoding = Geocoding.fromJson(response.data);
        if (geocoding.response.geoObjectCollection.featureMember.isNotEmpty) {
          text = geocoding.response.geoObjectCollection.featureMember[0]
              .geoObject.metaDataProperty.geocoderMetaData.text;
        }
        return UniversalData(data: text);
      }
      return UniversalData(error: "Other Error");
    } on DioException catch (e) {
      if (e.response != null) {
        return UniversalData(error: e.response!.data);
      } else {
        return UniversalData(error: e.message!);
      }
    } catch (error) {
      return UniversalData(error: error.toString());
    }
  }
}

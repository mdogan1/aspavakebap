import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'apps_record.g.dart';

abstract class AppsRecord implements Built<AppsRecord, AppsRecordBuilder> {
  static Serializer<AppsRecord> get serializer => _$appsRecordSerializer;

  String? get restaurantName;

  String? get restaurantAddress;

  String? get restaurantAddressLink;

  DateTime? get restarantOpeningMonday;

  DateTime? get restarantOpeningTuesday;

  DateTime? get restarantOpeningWednesday;

  DateTime? get restarantOpeningThursday;

  DateTime? get restarantOpeningFriday;

  DateTime? get restarantOpeningSaturday;

  DateTime? get restarantOpeningSunday;

  BuiltList<String>? get restarantSlider;

  bool? get restarantServicesDelivery;

  bool? get restarantOpeningPickup;

  String? get retaurantDeliverTimeMonday;

  String? get retaurantDeliverTimeTuesday;

  String? get retaurantDeliverTimeWednesday;

  String? get retaurantDeliverTimeThurdsday;

  String? get retaurantDeliverTimeFriday;

  String? get retaurantDeliverTimeSaturday;

  String? get retaurantDeliverTimeSunday;

  int? get restaurantDeliveryFee;

  String? get restaurantDeliveryMinOrderValue;

  String? get restaurantOrderLink;

  String? get restaurantReservationLink;

  String? get restaurantImprint;

  String? get restaurantPrivacyLink;

  String? get restaurantUserAgreementLink;

  String? get restaurantAndroidShareID;

  String? get restaurantIOSShareID;

  String? get restaurantPopUpTitle;

  String? get restaurantPopUpDescription;

  String? get restaurantPopUpLink;

  String? get restaurantPopUpImage;

  DateTime? get restarantClosingMonday;

  DateTime? get restarantClosingTuesday;

  DateTime? get restarantClosingWednesday;

  DateTime? get restarantClosingThursday;

  DateTime? get restarantClosingFriday;

  DateTime? get restarantClosingSaturday;

  DateTime? get restarantClosingSunday;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AppsRecordBuilder builder) => builder
    ..restaurantName = ''
    ..restaurantAddress = ''
    ..restaurantAddressLink = ''
    ..restarantSlider = ListBuilder()
    ..restarantServicesDelivery = false
    ..restarantOpeningPickup = false
    ..retaurantDeliverTimeMonday = ''
    ..retaurantDeliverTimeTuesday = ''
    ..retaurantDeliverTimeWednesday = ''
    ..retaurantDeliverTimeThurdsday = ''
    ..retaurantDeliverTimeFriday = ''
    ..retaurantDeliverTimeSaturday = ''
    ..retaurantDeliverTimeSunday = ''
    ..restaurantDeliveryFee = 0
    ..restaurantDeliveryMinOrderValue = ''
    ..restaurantOrderLink = ''
    ..restaurantReservationLink = ''
    ..restaurantImprint = ''
    ..restaurantPrivacyLink = ''
    ..restaurantUserAgreementLink = ''
    ..restaurantAndroidShareID = ''
    ..restaurantIOSShareID = ''
    ..restaurantPopUpTitle = ''
    ..restaurantPopUpDescription = ''
    ..restaurantPopUpLink = ''
    ..restaurantPopUpImage = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Apps');

  static Stream<AppsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AppsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AppsRecord._();
  factory AppsRecord([void Function(AppsRecordBuilder) updates]) = _$AppsRecord;

  static AppsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAppsRecordData({
  String? restaurantName,
  String? restaurantAddress,
  String? restaurantAddressLink,
  DateTime? restarantOpeningMonday,
  DateTime? restarantOpeningTuesday,
  DateTime? restarantOpeningWednesday,
  DateTime? restarantOpeningThursday,
  DateTime? restarantOpeningFriday,
  DateTime? restarantOpeningSaturday,
  DateTime? restarantOpeningSunday,
  bool? restarantServicesDelivery,
  bool? restarantOpeningPickup,
  String? retaurantDeliverTimeMonday,
  String? retaurantDeliverTimeTuesday,
  String? retaurantDeliverTimeWednesday,
  String? retaurantDeliverTimeThurdsday,
  String? retaurantDeliverTimeFriday,
  String? retaurantDeliverTimeSaturday,
  String? retaurantDeliverTimeSunday,
  int? restaurantDeliveryFee,
  String? restaurantDeliveryMinOrderValue,
  String? restaurantOrderLink,
  String? restaurantReservationLink,
  String? restaurantImprint,
  String? restaurantPrivacyLink,
  String? restaurantUserAgreementLink,
  String? restaurantAndroidShareID,
  String? restaurantIOSShareID,
  String? restaurantPopUpTitle,
  String? restaurantPopUpDescription,
  String? restaurantPopUpLink,
  String? restaurantPopUpImage,
  DateTime? restarantClosingMonday,
  DateTime? restarantClosingTuesday,
  DateTime? restarantClosingWednesday,
  DateTime? restarantClosingThursday,
  DateTime? restarantClosingFriday,
  DateTime? restarantClosingSaturday,
  DateTime? restarantClosingSunday,
}) {
  final firestoreData = serializers.toFirestore(
    AppsRecord.serializer,
    AppsRecord(
      (a) => a
        ..restaurantName = restaurantName
        ..restaurantAddress = restaurantAddress
        ..restaurantAddressLink = restaurantAddressLink
        ..restarantOpeningMonday = restarantOpeningMonday
        ..restarantOpeningTuesday = restarantOpeningTuesday
        ..restarantOpeningWednesday = restarantOpeningWednesday
        ..restarantOpeningThursday = restarantOpeningThursday
        ..restarantOpeningFriday = restarantOpeningFriday
        ..restarantOpeningSaturday = restarantOpeningSaturday
        ..restarantOpeningSunday = restarantOpeningSunday
        ..restarantSlider = null
        ..restarantServicesDelivery = restarantServicesDelivery
        ..restarantOpeningPickup = restarantOpeningPickup
        ..retaurantDeliverTimeMonday = retaurantDeliverTimeMonday
        ..retaurantDeliverTimeTuesday = retaurantDeliverTimeTuesday
        ..retaurantDeliverTimeWednesday = retaurantDeliverTimeWednesday
        ..retaurantDeliverTimeThurdsday = retaurantDeliverTimeThurdsday
        ..retaurantDeliverTimeFriday = retaurantDeliverTimeFriday
        ..retaurantDeliverTimeSaturday = retaurantDeliverTimeSaturday
        ..retaurantDeliverTimeSunday = retaurantDeliverTimeSunday
        ..restaurantDeliveryFee = restaurantDeliveryFee
        ..restaurantDeliveryMinOrderValue = restaurantDeliveryMinOrderValue
        ..restaurantOrderLink = restaurantOrderLink
        ..restaurantReservationLink = restaurantReservationLink
        ..restaurantImprint = restaurantImprint
        ..restaurantPrivacyLink = restaurantPrivacyLink
        ..restaurantUserAgreementLink = restaurantUserAgreementLink
        ..restaurantAndroidShareID = restaurantAndroidShareID
        ..restaurantIOSShareID = restaurantIOSShareID
        ..restaurantPopUpTitle = restaurantPopUpTitle
        ..restaurantPopUpDescription = restaurantPopUpDescription
        ..restaurantPopUpLink = restaurantPopUpLink
        ..restaurantPopUpImage = restaurantPopUpImage
        ..restarantClosingMonday = restarantClosingMonday
        ..restarantClosingTuesday = restarantClosingTuesday
        ..restarantClosingWednesday = restarantClosingWednesday
        ..restarantClosingThursday = restarantClosingThursday
        ..restarantClosingFriday = restarantClosingFriday
        ..restarantClosingSaturday = restarantClosingSaturday
        ..restarantClosingSunday = restarantClosingSunday,
    ),
  );

  return firestoreData;
}

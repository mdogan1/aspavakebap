// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apps_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppsRecord> _$appsRecordSerializer = new _$AppsRecordSerializer();

class _$AppsRecordSerializer implements StructuredSerializer<AppsRecord> {
  @override
  final Iterable<Type> types = const [AppsRecord, _$AppsRecord];
  @override
  final String wireName = 'AppsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, AppsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.restaurantName;
    if (value != null) {
      result
        ..add('restaurantName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.restaurantAddress;
    if (value != null) {
      result
        ..add('restaurantAddress')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.restaurantAddressLink;
    if (value != null) {
      result
        ..add('restaurantAddressLink')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.restarantOpeningMonday;
    if (value != null) {
      result
        ..add('restarantOpeningMonday')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.restarantOpeningTuesday;
    if (value != null) {
      result
        ..add('restarantOpeningTuesday')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.restarantOpeningWednesday;
    if (value != null) {
      result
        ..add('restarantOpeningWednesday')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.restarantOpeningThursday;
    if (value != null) {
      result
        ..add('restarantOpeningThursday')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.restarantOpeningFriday;
    if (value != null) {
      result
        ..add('restarantOpeningFriday')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.restarantOpeningSaturday;
    if (value != null) {
      result
        ..add('restarantOpeningSaturday')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.restarantOpeningSunday;
    if (value != null) {
      result
        ..add('restarantOpeningSunday')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.restarantSlider;
    if (value != null) {
      result
        ..add('restarantSlider')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.restarantServicesDelivery;
    if (value != null) {
      result
        ..add('restarantServicesDelivery')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.restarantOpeningPickup;
    if (value != null) {
      result
        ..add('restarantOpeningPickup')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.retaurantDeliverTimeMonday;
    if (value != null) {
      result
        ..add('retaurantDeliverTimeMonday')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.retaurantDeliverTimeTuesday;
    if (value != null) {
      result
        ..add('retaurantDeliverTimeTuesday')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.retaurantDeliverTimeWednesday;
    if (value != null) {
      result
        ..add('retaurantDeliverTimeWednesday')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.retaurantDeliverTimeThurdsday;
    if (value != null) {
      result
        ..add('retaurantDeliverTimeThurdsday')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.retaurantDeliverTimeFriday;
    if (value != null) {
      result
        ..add('retaurantDeliverTimeFriday')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.retaurantDeliverTimeSaturday;
    if (value != null) {
      result
        ..add('retaurantDeliverTimeSaturday')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.retaurantDeliverTimeSunday;
    if (value != null) {
      result
        ..add('retaurantDeliverTimeSunday')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.restaurantDeliveryFee;
    if (value != null) {
      result
        ..add('restaurantDeliveryFee')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.restaurantDeliveryMinOrderValue;
    if (value != null) {
      result
        ..add('restaurantDeliveryMinOrderValue')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.restaurantOrderLink;
    if (value != null) {
      result
        ..add('restaurantOrderLink')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.restaurantReservationLink;
    if (value != null) {
      result
        ..add('restaurantReservationLink')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.restaurantImprint;
    if (value != null) {
      result
        ..add('restaurantImprint')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.restaurantPrivacyLink;
    if (value != null) {
      result
        ..add('restaurantPrivacyLink')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.restaurantUserAgreementLink;
    if (value != null) {
      result
        ..add('restaurantUserAgreementLink')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.restaurantAndroidShareID;
    if (value != null) {
      result
        ..add('restaurantAndroidShareID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.restaurantIOSShareID;
    if (value != null) {
      result
        ..add('restaurantIOSShareID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.restaurantPopUpTitle;
    if (value != null) {
      result
        ..add('restaurantPopUpTitle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.restaurantPopUpDescription;
    if (value != null) {
      result
        ..add('restaurantPopUpDescription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.restaurantPopUpLink;
    if (value != null) {
      result
        ..add('restaurantPopUpLink')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.restaurantPopUpImage;
    if (value != null) {
      result
        ..add('restaurantPopUpImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.restarantClosingMonday;
    if (value != null) {
      result
        ..add('restarantClosingMonday')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.restarantClosingTuesday;
    if (value != null) {
      result
        ..add('restarantClosingTuesday')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.restarantClosingWednesday;
    if (value != null) {
      result
        ..add('restarantClosingWednesday')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.restarantClosingThursday;
    if (value != null) {
      result
        ..add('restarantClosingThursday')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.restarantClosingFriday;
    if (value != null) {
      result
        ..add('restarantClosingFriday')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.restarantClosingSaturday;
    if (value != null) {
      result
        ..add('restarantClosingSaturday')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.restarantClosingSunday;
    if (value != null) {
      result
        ..add('restarantClosingSunday')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  AppsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'restaurantName':
          result.restaurantName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'restaurantAddress':
          result.restaurantAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'restaurantAddressLink':
          result.restaurantAddressLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'restarantOpeningMonday':
          result.restarantOpeningMonday = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'restarantOpeningTuesday':
          result.restarantOpeningTuesday = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'restarantOpeningWednesday':
          result.restarantOpeningWednesday = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'restarantOpeningThursday':
          result.restarantOpeningThursday = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'restarantOpeningFriday':
          result.restarantOpeningFriday = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'restarantOpeningSaturday':
          result.restarantOpeningSaturday = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'restarantOpeningSunday':
          result.restarantOpeningSunday = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'restarantSlider':
          result.restarantSlider.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'restarantServicesDelivery':
          result.restarantServicesDelivery = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'restarantOpeningPickup':
          result.restarantOpeningPickup = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'retaurantDeliverTimeMonday':
          result.retaurantDeliverTimeMonday = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'retaurantDeliverTimeTuesday':
          result.retaurantDeliverTimeTuesday = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'retaurantDeliverTimeWednesday':
          result.retaurantDeliverTimeWednesday = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'retaurantDeliverTimeThurdsday':
          result.retaurantDeliverTimeThurdsday = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'retaurantDeliverTimeFriday':
          result.retaurantDeliverTimeFriday = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'retaurantDeliverTimeSaturday':
          result.retaurantDeliverTimeSaturday = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'retaurantDeliverTimeSunday':
          result.retaurantDeliverTimeSunday = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'restaurantDeliveryFee':
          result.restaurantDeliveryFee = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'restaurantDeliveryMinOrderValue':
          result.restaurantDeliveryMinOrderValue = serializers.deserialize(
              value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'restaurantOrderLink':
          result.restaurantOrderLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'restaurantReservationLink':
          result.restaurantReservationLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'restaurantImprint':
          result.restaurantImprint = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'restaurantPrivacyLink':
          result.restaurantPrivacyLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'restaurantUserAgreementLink':
          result.restaurantUserAgreementLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'restaurantAndroidShareID':
          result.restaurantAndroidShareID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'restaurantIOSShareID':
          result.restaurantIOSShareID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'restaurantPopUpTitle':
          result.restaurantPopUpTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'restaurantPopUpDescription':
          result.restaurantPopUpDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'restaurantPopUpLink':
          result.restaurantPopUpLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'restaurantPopUpImage':
          result.restaurantPopUpImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'restarantClosingMonday':
          result.restarantClosingMonday = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'restarantClosingTuesday':
          result.restarantClosingTuesday = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'restarantClosingWednesday':
          result.restarantClosingWednesday = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'restarantClosingThursday':
          result.restarantClosingThursday = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'restarantClosingFriday':
          result.restarantClosingFriday = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'restarantClosingSaturday':
          result.restarantClosingSaturday = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'restarantClosingSunday':
          result.restarantClosingSunday = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$AppsRecord extends AppsRecord {
  @override
  final String? restaurantName;
  @override
  final String? restaurantAddress;
  @override
  final String? restaurantAddressLink;
  @override
  final DateTime? restarantOpeningMonday;
  @override
  final DateTime? restarantOpeningTuesday;
  @override
  final DateTime? restarantOpeningWednesday;
  @override
  final DateTime? restarantOpeningThursday;
  @override
  final DateTime? restarantOpeningFriday;
  @override
  final DateTime? restarantOpeningSaturday;
  @override
  final DateTime? restarantOpeningSunday;
  @override
  final BuiltList<String>? restarantSlider;
  @override
  final bool? restarantServicesDelivery;
  @override
  final bool? restarantOpeningPickup;
  @override
  final String? retaurantDeliverTimeMonday;
  @override
  final String? retaurantDeliverTimeTuesday;
  @override
  final String? retaurantDeliverTimeWednesday;
  @override
  final String? retaurantDeliverTimeThurdsday;
  @override
  final String? retaurantDeliverTimeFriday;
  @override
  final String? retaurantDeliverTimeSaturday;
  @override
  final String? retaurantDeliverTimeSunday;
  @override
  final int? restaurantDeliveryFee;
  @override
  final String? restaurantDeliveryMinOrderValue;
  @override
  final String? restaurantOrderLink;
  @override
  final String? restaurantReservationLink;
  @override
  final String? restaurantImprint;
  @override
  final String? restaurantPrivacyLink;
  @override
  final String? restaurantUserAgreementLink;
  @override
  final String? restaurantAndroidShareID;
  @override
  final String? restaurantIOSShareID;
  @override
  final String? restaurantPopUpTitle;
  @override
  final String? restaurantPopUpDescription;
  @override
  final String? restaurantPopUpLink;
  @override
  final String? restaurantPopUpImage;
  @override
  final DateTime? restarantClosingMonday;
  @override
  final DateTime? restarantClosingTuesday;
  @override
  final DateTime? restarantClosingWednesday;
  @override
  final DateTime? restarantClosingThursday;
  @override
  final DateTime? restarantClosingFriday;
  @override
  final DateTime? restarantClosingSaturday;
  @override
  final DateTime? restarantClosingSunday;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AppsRecord([void Function(AppsRecordBuilder)? updates]) =>
      (new AppsRecordBuilder()..update(updates))._build();

  _$AppsRecord._(
      {this.restaurantName,
      this.restaurantAddress,
      this.restaurantAddressLink,
      this.restarantOpeningMonday,
      this.restarantOpeningTuesday,
      this.restarantOpeningWednesday,
      this.restarantOpeningThursday,
      this.restarantOpeningFriday,
      this.restarantOpeningSaturday,
      this.restarantOpeningSunday,
      this.restarantSlider,
      this.restarantServicesDelivery,
      this.restarantOpeningPickup,
      this.retaurantDeliverTimeMonday,
      this.retaurantDeliverTimeTuesday,
      this.retaurantDeliverTimeWednesday,
      this.retaurantDeliverTimeThurdsday,
      this.retaurantDeliverTimeFriday,
      this.retaurantDeliverTimeSaturday,
      this.retaurantDeliverTimeSunday,
      this.restaurantDeliveryFee,
      this.restaurantDeliveryMinOrderValue,
      this.restaurantOrderLink,
      this.restaurantReservationLink,
      this.restaurantImprint,
      this.restaurantPrivacyLink,
      this.restaurantUserAgreementLink,
      this.restaurantAndroidShareID,
      this.restaurantIOSShareID,
      this.restaurantPopUpTitle,
      this.restaurantPopUpDescription,
      this.restaurantPopUpLink,
      this.restaurantPopUpImage,
      this.restarantClosingMonday,
      this.restarantClosingTuesday,
      this.restarantClosingWednesday,
      this.restarantClosingThursday,
      this.restarantClosingFriday,
      this.restarantClosingSaturday,
      this.restarantClosingSunday,
      this.ffRef})
      : super._();

  @override
  AppsRecord rebuild(void Function(AppsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppsRecordBuilder toBuilder() => new AppsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppsRecord &&
        restaurantName == other.restaurantName &&
        restaurantAddress == other.restaurantAddress &&
        restaurantAddressLink == other.restaurantAddressLink &&
        restarantOpeningMonday == other.restarantOpeningMonday &&
        restarantOpeningTuesday == other.restarantOpeningTuesday &&
        restarantOpeningWednesday == other.restarantOpeningWednesday &&
        restarantOpeningThursday == other.restarantOpeningThursday &&
        restarantOpeningFriday == other.restarantOpeningFriday &&
        restarantOpeningSaturday == other.restarantOpeningSaturday &&
        restarantOpeningSunday == other.restarantOpeningSunday &&
        restarantSlider == other.restarantSlider &&
        restarantServicesDelivery == other.restarantServicesDelivery &&
        restarantOpeningPickup == other.restarantOpeningPickup &&
        retaurantDeliverTimeMonday == other.retaurantDeliverTimeMonday &&
        retaurantDeliverTimeTuesday == other.retaurantDeliverTimeTuesday &&
        retaurantDeliverTimeWednesday == other.retaurantDeliverTimeWednesday &&
        retaurantDeliverTimeThurdsday == other.retaurantDeliverTimeThurdsday &&
        retaurantDeliverTimeFriday == other.retaurantDeliverTimeFriday &&
        retaurantDeliverTimeSaturday == other.retaurantDeliverTimeSaturday &&
        retaurantDeliverTimeSunday == other.retaurantDeliverTimeSunday &&
        restaurantDeliveryFee == other.restaurantDeliveryFee &&
        restaurantDeliveryMinOrderValue ==
            other.restaurantDeliveryMinOrderValue &&
        restaurantOrderLink == other.restaurantOrderLink &&
        restaurantReservationLink == other.restaurantReservationLink &&
        restaurantImprint == other.restaurantImprint &&
        restaurantPrivacyLink == other.restaurantPrivacyLink &&
        restaurantUserAgreementLink == other.restaurantUserAgreementLink &&
        restaurantAndroidShareID == other.restaurantAndroidShareID &&
        restaurantIOSShareID == other.restaurantIOSShareID &&
        restaurantPopUpTitle == other.restaurantPopUpTitle &&
        restaurantPopUpDescription == other.restaurantPopUpDescription &&
        restaurantPopUpLink == other.restaurantPopUpLink &&
        restaurantPopUpImage == other.restaurantPopUpImage &&
        restarantClosingMonday == other.restarantClosingMonday &&
        restarantClosingTuesday == other.restarantClosingTuesday &&
        restarantClosingWednesday == other.restarantClosingWednesday &&
        restarantClosingThursday == other.restarantClosingThursday &&
        restarantClosingFriday == other.restarantClosingFriday &&
        restarantClosingSaturday == other.restarantClosingSaturday &&
        restarantClosingSunday == other.restarantClosingSunday &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, restaurantName.hashCode), restaurantAddress.hashCode), restaurantAddressLink.hashCode), restarantOpeningMonday.hashCode), restarantOpeningTuesday.hashCode), restarantOpeningWednesday.hashCode), restarantOpeningThursday.hashCode), restarantOpeningFriday.hashCode), restarantOpeningSaturday.hashCode), restarantOpeningSunday.hashCode), restarantSlider.hashCode), restarantServicesDelivery.hashCode), restarantOpeningPickup.hashCode), retaurantDeliverTimeMonday.hashCode), retaurantDeliverTimeTuesday.hashCode), retaurantDeliverTimeWednesday.hashCode), retaurantDeliverTimeThurdsday.hashCode), retaurantDeliverTimeFriday.hashCode), retaurantDeliverTimeSaturday.hashCode), retaurantDeliverTimeSunday.hashCode), restaurantDeliveryFee.hashCode), restaurantDeliveryMinOrderValue.hashCode),
                                                                                restaurantOrderLink.hashCode),
                                                                            restaurantReservationLink.hashCode),
                                                                        restaurantImprint.hashCode),
                                                                    restaurantPrivacyLink.hashCode),
                                                                restaurantUserAgreementLink.hashCode),
                                                            restaurantAndroidShareID.hashCode),
                                                        restaurantIOSShareID.hashCode),
                                                    restaurantPopUpTitle.hashCode),
                                                restaurantPopUpDescription.hashCode),
                                            restaurantPopUpLink.hashCode),
                                        restaurantPopUpImage.hashCode),
                                    restarantClosingMonday.hashCode),
                                restarantClosingTuesday.hashCode),
                            restarantClosingWednesday.hashCode),
                        restarantClosingThursday.hashCode),
                    restarantClosingFriday.hashCode),
                restarantClosingSaturday.hashCode),
            restarantClosingSunday.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AppsRecord')
          ..add('restaurantName', restaurantName)
          ..add('restaurantAddress', restaurantAddress)
          ..add('restaurantAddressLink', restaurantAddressLink)
          ..add('restarantOpeningMonday', restarantOpeningMonday)
          ..add('restarantOpeningTuesday', restarantOpeningTuesday)
          ..add('restarantOpeningWednesday', restarantOpeningWednesday)
          ..add('restarantOpeningThursday', restarantOpeningThursday)
          ..add('restarantOpeningFriday', restarantOpeningFriday)
          ..add('restarantOpeningSaturday', restarantOpeningSaturday)
          ..add('restarantOpeningSunday', restarantOpeningSunday)
          ..add('restarantSlider', restarantSlider)
          ..add('restarantServicesDelivery', restarantServicesDelivery)
          ..add('restarantOpeningPickup', restarantOpeningPickup)
          ..add('retaurantDeliverTimeMonday', retaurantDeliverTimeMonday)
          ..add('retaurantDeliverTimeTuesday', retaurantDeliverTimeTuesday)
          ..add('retaurantDeliverTimeWednesday', retaurantDeliverTimeWednesday)
          ..add('retaurantDeliverTimeThurdsday', retaurantDeliverTimeThurdsday)
          ..add('retaurantDeliverTimeFriday', retaurantDeliverTimeFriday)
          ..add('retaurantDeliverTimeSaturday', retaurantDeliverTimeSaturday)
          ..add('retaurantDeliverTimeSunday', retaurantDeliverTimeSunday)
          ..add('restaurantDeliveryFee', restaurantDeliveryFee)
          ..add('restaurantDeliveryMinOrderValue',
              restaurantDeliveryMinOrderValue)
          ..add('restaurantOrderLink', restaurantOrderLink)
          ..add('restaurantReservationLink', restaurantReservationLink)
          ..add('restaurantImprint', restaurantImprint)
          ..add('restaurantPrivacyLink', restaurantPrivacyLink)
          ..add('restaurantUserAgreementLink', restaurantUserAgreementLink)
          ..add('restaurantAndroidShareID', restaurantAndroidShareID)
          ..add('restaurantIOSShareID', restaurantIOSShareID)
          ..add('restaurantPopUpTitle', restaurantPopUpTitle)
          ..add('restaurantPopUpDescription', restaurantPopUpDescription)
          ..add('restaurantPopUpLink', restaurantPopUpLink)
          ..add('restaurantPopUpImage', restaurantPopUpImage)
          ..add('restarantClosingMonday', restarantClosingMonday)
          ..add('restarantClosingTuesday', restarantClosingTuesday)
          ..add('restarantClosingWednesday', restarantClosingWednesday)
          ..add('restarantClosingThursday', restarantClosingThursday)
          ..add('restarantClosingFriday', restarantClosingFriday)
          ..add('restarantClosingSaturday', restarantClosingSaturday)
          ..add('restarantClosingSunday', restarantClosingSunday)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AppsRecordBuilder implements Builder<AppsRecord, AppsRecordBuilder> {
  _$AppsRecord? _$v;

  String? _restaurantName;
  String? get restaurantName => _$this._restaurantName;
  set restaurantName(String? restaurantName) =>
      _$this._restaurantName = restaurantName;

  String? _restaurantAddress;
  String? get restaurantAddress => _$this._restaurantAddress;
  set restaurantAddress(String? restaurantAddress) =>
      _$this._restaurantAddress = restaurantAddress;

  String? _restaurantAddressLink;
  String? get restaurantAddressLink => _$this._restaurantAddressLink;
  set restaurantAddressLink(String? restaurantAddressLink) =>
      _$this._restaurantAddressLink = restaurantAddressLink;

  DateTime? _restarantOpeningMonday;
  DateTime? get restarantOpeningMonday => _$this._restarantOpeningMonday;
  set restarantOpeningMonday(DateTime? restarantOpeningMonday) =>
      _$this._restarantOpeningMonday = restarantOpeningMonday;

  DateTime? _restarantOpeningTuesday;
  DateTime? get restarantOpeningTuesday => _$this._restarantOpeningTuesday;
  set restarantOpeningTuesday(DateTime? restarantOpeningTuesday) =>
      _$this._restarantOpeningTuesday = restarantOpeningTuesday;

  DateTime? _restarantOpeningWednesday;
  DateTime? get restarantOpeningWednesday => _$this._restarantOpeningWednesday;
  set restarantOpeningWednesday(DateTime? restarantOpeningWednesday) =>
      _$this._restarantOpeningWednesday = restarantOpeningWednesday;

  DateTime? _restarantOpeningThursday;
  DateTime? get restarantOpeningThursday => _$this._restarantOpeningThursday;
  set restarantOpeningThursday(DateTime? restarantOpeningThursday) =>
      _$this._restarantOpeningThursday = restarantOpeningThursday;

  DateTime? _restarantOpeningFriday;
  DateTime? get restarantOpeningFriday => _$this._restarantOpeningFriday;
  set restarantOpeningFriday(DateTime? restarantOpeningFriday) =>
      _$this._restarantOpeningFriday = restarantOpeningFriday;

  DateTime? _restarantOpeningSaturday;
  DateTime? get restarantOpeningSaturday => _$this._restarantOpeningSaturday;
  set restarantOpeningSaturday(DateTime? restarantOpeningSaturday) =>
      _$this._restarantOpeningSaturday = restarantOpeningSaturday;

  DateTime? _restarantOpeningSunday;
  DateTime? get restarantOpeningSunday => _$this._restarantOpeningSunday;
  set restarantOpeningSunday(DateTime? restarantOpeningSunday) =>
      _$this._restarantOpeningSunday = restarantOpeningSunday;

  ListBuilder<String>? _restarantSlider;
  ListBuilder<String> get restarantSlider =>
      _$this._restarantSlider ??= new ListBuilder<String>();
  set restarantSlider(ListBuilder<String>? restarantSlider) =>
      _$this._restarantSlider = restarantSlider;

  bool? _restarantServicesDelivery;
  bool? get restarantServicesDelivery => _$this._restarantServicesDelivery;
  set restarantServicesDelivery(bool? restarantServicesDelivery) =>
      _$this._restarantServicesDelivery = restarantServicesDelivery;

  bool? _restarantOpeningPickup;
  bool? get restarantOpeningPickup => _$this._restarantOpeningPickup;
  set restarantOpeningPickup(bool? restarantOpeningPickup) =>
      _$this._restarantOpeningPickup = restarantOpeningPickup;

  String? _retaurantDeliverTimeMonday;
  String? get retaurantDeliverTimeMonday => _$this._retaurantDeliverTimeMonday;
  set retaurantDeliverTimeMonday(String? retaurantDeliverTimeMonday) =>
      _$this._retaurantDeliverTimeMonday = retaurantDeliverTimeMonday;

  String? _retaurantDeliverTimeTuesday;
  String? get retaurantDeliverTimeTuesday =>
      _$this._retaurantDeliverTimeTuesday;
  set retaurantDeliverTimeTuesday(String? retaurantDeliverTimeTuesday) =>
      _$this._retaurantDeliverTimeTuesday = retaurantDeliverTimeTuesday;

  String? _retaurantDeliverTimeWednesday;
  String? get retaurantDeliverTimeWednesday =>
      _$this._retaurantDeliverTimeWednesday;
  set retaurantDeliverTimeWednesday(String? retaurantDeliverTimeWednesday) =>
      _$this._retaurantDeliverTimeWednesday = retaurantDeliverTimeWednesday;

  String? _retaurantDeliverTimeThurdsday;
  String? get retaurantDeliverTimeThurdsday =>
      _$this._retaurantDeliverTimeThurdsday;
  set retaurantDeliverTimeThurdsday(String? retaurantDeliverTimeThurdsday) =>
      _$this._retaurantDeliverTimeThurdsday = retaurantDeliverTimeThurdsday;

  String? _retaurantDeliverTimeFriday;
  String? get retaurantDeliverTimeFriday => _$this._retaurantDeliverTimeFriday;
  set retaurantDeliverTimeFriday(String? retaurantDeliverTimeFriday) =>
      _$this._retaurantDeliverTimeFriday = retaurantDeliverTimeFriday;

  String? _retaurantDeliverTimeSaturday;
  String? get retaurantDeliverTimeSaturday =>
      _$this._retaurantDeliverTimeSaturday;
  set retaurantDeliverTimeSaturday(String? retaurantDeliverTimeSaturday) =>
      _$this._retaurantDeliverTimeSaturday = retaurantDeliverTimeSaturday;

  String? _retaurantDeliverTimeSunday;
  String? get retaurantDeliverTimeSunday => _$this._retaurantDeliverTimeSunday;
  set retaurantDeliverTimeSunday(String? retaurantDeliverTimeSunday) =>
      _$this._retaurantDeliverTimeSunday = retaurantDeliverTimeSunday;

  int? _restaurantDeliveryFee;
  int? get restaurantDeliveryFee => _$this._restaurantDeliveryFee;
  set restaurantDeliveryFee(int? restaurantDeliveryFee) =>
      _$this._restaurantDeliveryFee = restaurantDeliveryFee;

  String? _restaurantDeliveryMinOrderValue;
  String? get restaurantDeliveryMinOrderValue =>
      _$this._restaurantDeliveryMinOrderValue;
  set restaurantDeliveryMinOrderValue(
          String? restaurantDeliveryMinOrderValue) =>
      _$this._restaurantDeliveryMinOrderValue = restaurantDeliveryMinOrderValue;

  String? _restaurantOrderLink;
  String? get restaurantOrderLink => _$this._restaurantOrderLink;
  set restaurantOrderLink(String? restaurantOrderLink) =>
      _$this._restaurantOrderLink = restaurantOrderLink;

  String? _restaurantReservationLink;
  String? get restaurantReservationLink => _$this._restaurantReservationLink;
  set restaurantReservationLink(String? restaurantReservationLink) =>
      _$this._restaurantReservationLink = restaurantReservationLink;

  String? _restaurantImprint;
  String? get restaurantImprint => _$this._restaurantImprint;
  set restaurantImprint(String? restaurantImprint) =>
      _$this._restaurantImprint = restaurantImprint;

  String? _restaurantPrivacyLink;
  String? get restaurantPrivacyLink => _$this._restaurantPrivacyLink;
  set restaurantPrivacyLink(String? restaurantPrivacyLink) =>
      _$this._restaurantPrivacyLink = restaurantPrivacyLink;

  String? _restaurantUserAgreementLink;
  String? get restaurantUserAgreementLink =>
      _$this._restaurantUserAgreementLink;
  set restaurantUserAgreementLink(String? restaurantUserAgreementLink) =>
      _$this._restaurantUserAgreementLink = restaurantUserAgreementLink;

  String? _restaurantAndroidShareID;
  String? get restaurantAndroidShareID => _$this._restaurantAndroidShareID;
  set restaurantAndroidShareID(String? restaurantAndroidShareID) =>
      _$this._restaurantAndroidShareID = restaurantAndroidShareID;

  String? _restaurantIOSShareID;
  String? get restaurantIOSShareID => _$this._restaurantIOSShareID;
  set restaurantIOSShareID(String? restaurantIOSShareID) =>
      _$this._restaurantIOSShareID = restaurantIOSShareID;

  String? _restaurantPopUpTitle;
  String? get restaurantPopUpTitle => _$this._restaurantPopUpTitle;
  set restaurantPopUpTitle(String? restaurantPopUpTitle) =>
      _$this._restaurantPopUpTitle = restaurantPopUpTitle;

  String? _restaurantPopUpDescription;
  String? get restaurantPopUpDescription => _$this._restaurantPopUpDescription;
  set restaurantPopUpDescription(String? restaurantPopUpDescription) =>
      _$this._restaurantPopUpDescription = restaurantPopUpDescription;

  String? _restaurantPopUpLink;
  String? get restaurantPopUpLink => _$this._restaurantPopUpLink;
  set restaurantPopUpLink(String? restaurantPopUpLink) =>
      _$this._restaurantPopUpLink = restaurantPopUpLink;

  String? _restaurantPopUpImage;
  String? get restaurantPopUpImage => _$this._restaurantPopUpImage;
  set restaurantPopUpImage(String? restaurantPopUpImage) =>
      _$this._restaurantPopUpImage = restaurantPopUpImage;

  DateTime? _restarantClosingMonday;
  DateTime? get restarantClosingMonday => _$this._restarantClosingMonday;
  set restarantClosingMonday(DateTime? restarantClosingMonday) =>
      _$this._restarantClosingMonday = restarantClosingMonday;

  DateTime? _restarantClosingTuesday;
  DateTime? get restarantClosingTuesday => _$this._restarantClosingTuesday;
  set restarantClosingTuesday(DateTime? restarantClosingTuesday) =>
      _$this._restarantClosingTuesday = restarantClosingTuesday;

  DateTime? _restarantClosingWednesday;
  DateTime? get restarantClosingWednesday => _$this._restarantClosingWednesday;
  set restarantClosingWednesday(DateTime? restarantClosingWednesday) =>
      _$this._restarantClosingWednesday = restarantClosingWednesday;

  DateTime? _restarantClosingThursday;
  DateTime? get restarantClosingThursday => _$this._restarantClosingThursday;
  set restarantClosingThursday(DateTime? restarantClosingThursday) =>
      _$this._restarantClosingThursday = restarantClosingThursday;

  DateTime? _restarantClosingFriday;
  DateTime? get restarantClosingFriday => _$this._restarantClosingFriday;
  set restarantClosingFriday(DateTime? restarantClosingFriday) =>
      _$this._restarantClosingFriday = restarantClosingFriday;

  DateTime? _restarantClosingSaturday;
  DateTime? get restarantClosingSaturday => _$this._restarantClosingSaturday;
  set restarantClosingSaturday(DateTime? restarantClosingSaturday) =>
      _$this._restarantClosingSaturday = restarantClosingSaturday;

  DateTime? _restarantClosingSunday;
  DateTime? get restarantClosingSunday => _$this._restarantClosingSunday;
  set restarantClosingSunday(DateTime? restarantClosingSunday) =>
      _$this._restarantClosingSunday = restarantClosingSunday;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AppsRecordBuilder() {
    AppsRecord._initializeBuilder(this);
  }

  AppsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restaurantName = $v.restaurantName;
      _restaurantAddress = $v.restaurantAddress;
      _restaurantAddressLink = $v.restaurantAddressLink;
      _restarantOpeningMonday = $v.restarantOpeningMonday;
      _restarantOpeningTuesday = $v.restarantOpeningTuesday;
      _restarantOpeningWednesday = $v.restarantOpeningWednesday;
      _restarantOpeningThursday = $v.restarantOpeningThursday;
      _restarantOpeningFriday = $v.restarantOpeningFriday;
      _restarantOpeningSaturday = $v.restarantOpeningSaturday;
      _restarantOpeningSunday = $v.restarantOpeningSunday;
      _restarantSlider = $v.restarantSlider?.toBuilder();
      _restarantServicesDelivery = $v.restarantServicesDelivery;
      _restarantOpeningPickup = $v.restarantOpeningPickup;
      _retaurantDeliverTimeMonday = $v.retaurantDeliverTimeMonday;
      _retaurantDeliverTimeTuesday = $v.retaurantDeliverTimeTuesday;
      _retaurantDeliverTimeWednesday = $v.retaurantDeliverTimeWednesday;
      _retaurantDeliverTimeThurdsday = $v.retaurantDeliverTimeThurdsday;
      _retaurantDeliverTimeFriday = $v.retaurantDeliverTimeFriday;
      _retaurantDeliverTimeSaturday = $v.retaurantDeliverTimeSaturday;
      _retaurantDeliverTimeSunday = $v.retaurantDeliverTimeSunday;
      _restaurantDeliveryFee = $v.restaurantDeliveryFee;
      _restaurantDeliveryMinOrderValue = $v.restaurantDeliveryMinOrderValue;
      _restaurantOrderLink = $v.restaurantOrderLink;
      _restaurantReservationLink = $v.restaurantReservationLink;
      _restaurantImprint = $v.restaurantImprint;
      _restaurantPrivacyLink = $v.restaurantPrivacyLink;
      _restaurantUserAgreementLink = $v.restaurantUserAgreementLink;
      _restaurantAndroidShareID = $v.restaurantAndroidShareID;
      _restaurantIOSShareID = $v.restaurantIOSShareID;
      _restaurantPopUpTitle = $v.restaurantPopUpTitle;
      _restaurantPopUpDescription = $v.restaurantPopUpDescription;
      _restaurantPopUpLink = $v.restaurantPopUpLink;
      _restaurantPopUpImage = $v.restaurantPopUpImage;
      _restarantClosingMonday = $v.restarantClosingMonday;
      _restarantClosingTuesday = $v.restarantClosingTuesday;
      _restarantClosingWednesday = $v.restarantClosingWednesday;
      _restarantClosingThursday = $v.restarantClosingThursday;
      _restarantClosingFriday = $v.restarantClosingFriday;
      _restarantClosingSaturday = $v.restarantClosingSaturday;
      _restarantClosingSunday = $v.restarantClosingSunday;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppsRecord;
  }

  @override
  void update(void Function(AppsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AppsRecord build() => _build();

  _$AppsRecord _build() {
    _$AppsRecord _$result;
    try {
      _$result = _$v ??
          new _$AppsRecord._(
              restaurantName: restaurantName,
              restaurantAddress: restaurantAddress,
              restaurantAddressLink: restaurantAddressLink,
              restarantOpeningMonday: restarantOpeningMonday,
              restarantOpeningTuesday: restarantOpeningTuesday,
              restarantOpeningWednesday: restarantOpeningWednesday,
              restarantOpeningThursday: restarantOpeningThursday,
              restarantOpeningFriday: restarantOpeningFriday,
              restarantOpeningSaturday: restarantOpeningSaturday,
              restarantOpeningSunday: restarantOpeningSunday,
              restarantSlider: _restarantSlider?.build(),
              restarantServicesDelivery: restarantServicesDelivery,
              restarantOpeningPickup: restarantOpeningPickup,
              retaurantDeliverTimeMonday: retaurantDeliverTimeMonday,
              retaurantDeliverTimeTuesday: retaurantDeliverTimeTuesday,
              retaurantDeliverTimeWednesday: retaurantDeliverTimeWednesday,
              retaurantDeliverTimeThurdsday: retaurantDeliverTimeThurdsday,
              retaurantDeliverTimeFriday: retaurantDeliverTimeFriday,
              retaurantDeliverTimeSaturday: retaurantDeliverTimeSaturday,
              retaurantDeliverTimeSunday: retaurantDeliverTimeSunday,
              restaurantDeliveryFee: restaurantDeliveryFee,
              restaurantDeliveryMinOrderValue: restaurantDeliveryMinOrderValue,
              restaurantOrderLink: restaurantOrderLink,
              restaurantReservationLink: restaurantReservationLink,
              restaurantImprint: restaurantImprint,
              restaurantPrivacyLink: restaurantPrivacyLink,
              restaurantUserAgreementLink: restaurantUserAgreementLink,
              restaurantAndroidShareID: restaurantAndroidShareID,
              restaurantIOSShareID: restaurantIOSShareID,
              restaurantPopUpTitle: restaurantPopUpTitle,
              restaurantPopUpDescription: restaurantPopUpDescription,
              restaurantPopUpLink: restaurantPopUpLink,
              restaurantPopUpImage: restaurantPopUpImage,
              restarantClosingMonday: restarantClosingMonday,
              restarantClosingTuesday: restarantClosingTuesday,
              restarantClosingWednesday: restarantClosingWednesday,
              restarantClosingThursday: restarantClosingThursday,
              restarantClosingFriday: restarantClosingFriday,
              restarantClosingSaturday: restarantClosingSaturday,
              restarantClosingSunday: restarantClosingSunday,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'restarantSlider';
        _restarantSlider?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AppsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

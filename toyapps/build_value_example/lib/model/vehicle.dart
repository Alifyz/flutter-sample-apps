import 'package:built_value/built_value.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vehicle.g.dart';

abstract class Vehicle implements Built<Vehicle, VehicleBuilder> {
  
  Vehicle._();
  factory Vehicle([void Function(VehicleBuilder) updates]) = _$Vehicle;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Vehicle.serializer, this);
  }

  static Vehicle fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Vehicle.serializer, json);
  }

  static Serializer<Vehicle> get serializer => _$vehicleSerializer;
}
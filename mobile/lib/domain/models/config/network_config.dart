import 'package:flutter/foundation.dart';
import 'package:immich_mobile/domain/models/metadata_key.dart';

class NetworkConfig {
  final bool autoEndpointSwitching;
  final String? preferredWifiName;
  final String? localEndpoint;
  final List<String> externalEndpointList;
  final Map<String, String> customHeaders;

  const NetworkConfig({
    required this.autoEndpointSwitching,
    this.preferredWifiName,
    this.localEndpoint,
    required this.externalEndpointList,
    required this.customHeaders,
  });

  NetworkConfig.defaults()
    : autoEndpointSwitching = MetadataKey.networkAutoEndpointSwitching.defaultValue,
      preferredWifiName = MetadataKey.networkPreferredWifiName.defaultValue,
      localEndpoint = MetadataKey.networkLocalEndpoint.defaultValue,
      externalEndpointList = MetadataKey.networkExternalEndpointList.defaultValue,
      customHeaders = MetadataKey.networkCustomHeaders.defaultValue;

  NetworkConfig copyWith({
    bool? autoEndpointSwitching,
    String? preferredWifiName,
    String? localEndpoint,
    List<String>? externalEndpointList,
    Map<String, String>? customHeaders,
  }) => NetworkConfig(
    autoEndpointSwitching: autoEndpointSwitching ?? this.autoEndpointSwitching,
    preferredWifiName: preferredWifiName ?? this.preferredWifiName,
    localEndpoint: localEndpoint ?? this.localEndpoint,
    externalEndpointList: externalEndpointList ?? this.externalEndpointList,
    customHeaders: customHeaders ?? this.customHeaders,
  );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is NetworkConfig &&
          other.autoEndpointSwitching == autoEndpointSwitching &&
          other.preferredWifiName == preferredWifiName &&
          other.localEndpoint == localEndpoint &&
          listEquals(other.externalEndpointList, externalEndpointList) &&
          mapEquals(other.customHeaders, customHeaders));

  @override
  int get hashCode => Object.hash(
    autoEndpointSwitching,
    preferredWifiName,
    localEndpoint,
    Object.hashAll(externalEndpointList),
    Object.hashAllUnordered(customHeaders.entries.map((e) => Object.hash(e.key, e.value))),
  );

  @override
  String toString() =>
      'NetworkConfig(autoEndpointSwitching: $autoEndpointSwitching, preferredWifiName: $preferredWifiName, localEndpoint: $localEndpoint, externalEndpointList: $externalEndpointList, customHeaders: $customHeaders)';
}

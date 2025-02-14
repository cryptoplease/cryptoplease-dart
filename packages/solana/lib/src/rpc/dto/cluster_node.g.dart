// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cluster_node.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClusterNode _$ClusterNodeFromJson(Map<String, dynamic> json) => ClusterNode(
      pubkey: json['pubkey'] as String,
      gossip: json['gossip'] as String?,
      tpu: json['tpu'] as String?,
      rpc: json['rpc'] as String?,
      version: json['version'] as String?,
      featureSet: (json['featureSet'] as num?)?.toInt(),
      shredVersion: (json['shredVersion'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ClusterNodeToJson(ClusterNode instance) =>
    <String, dynamic>{
      'pubkey': instance.pubkey,
      'gossip': instance.gossip,
      'tpu': instance.tpu,
      'rpc': instance.rpc,
      'version': instance.version,
      'featureSet': instance.featureSet,
      'shredVersion': instance.shredVersion,
    };

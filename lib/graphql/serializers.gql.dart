import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;
import 'package:instant/graphql/greet.data.gql.dart' show GGreetData;
import 'package:instant/graphql/greet.req.gql.dart' show GGreetReq;
import 'package:instant/graphql/greet.var.gql.dart' show GGreetVars;
import 'package:instant/graphql/schema.schema.gql.dart'
    show GLoginUserInputType;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([GGreetData, GGreetReq, GGreetVars, GLoginUserInputType])
final Serializers serializers = _serializersBuilder.build();

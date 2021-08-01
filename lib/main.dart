import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:instant/ferry/client.dart';
import 'package:instant/graphql/greet.data.gql.dart';
import 'package:instant/graphql/greet.req.gql.dart';
import 'package:instant/graphql/greet.var.gql.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final client = initClient();
  final greetReq = GGreetReq();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Instant'),
        ),
        body: Operation(
          client: client,
          operationRequest: greetReq,
          builder: (context,
              OperationResponse<GGreetData, GGreetVars>? response, error) {
            if (response == null) {
              return Text('Failed to fetch');
            }
            if (response.loading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            final data = response.data?.hello ?? 'No Data';
            return Text(data);
          },
        ));
  }
}

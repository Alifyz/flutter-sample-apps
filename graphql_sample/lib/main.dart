import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:graphql_sample/service/graphql_conf.dart';
import 'package:graphql_sample/service/graphql_queries.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: GraphQLConfiguration.client,
      child: CacheProvider(
        child: MaterialApp(
          title: 'GraphQL App',
          theme: ThemeData(primarySwatch: Colors.deepPurple),
          home: MyHomePage(),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GraphQL - App"),
      ),
      body: Query(
        options: QueryOptions(document: QueryMutation.getAll()),
        builder: (QueryResult result,
            {VoidCallback refetch, FetchMore fetchMore}) {

            print(result.data);

          return Text("Working on it");
        },
      ),
    );
  }
}

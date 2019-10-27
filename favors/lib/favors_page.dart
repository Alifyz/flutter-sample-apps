import 'package:flutter/material.dart';
import 'favors_model.dart';

class FavorsPage extends StatelessWidget {
  final List<Favor> pendingFavors;
  final List<Favor> acceptedFavors;
  final List<Favor> completeFavors;
  final List<Favor> refusedFavors;

  FavorsPage(
      {Key key,
      this.pendingFavors,
      this.acceptedFavors,
      this.completeFavors,
      this.refusedFavors})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Favor Management"),
          bottom: TabBar(
            isScrollable: true,
            tabs: <Widget>[
              _buildTab("Pending"),
              _buildTab("Doing"),
              _buildTab("Completed"),
              _buildTab("Refused"),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            _favorList("Pending Request", pendingFavors),
            _favorList("Accepted Request", acceptedFavors),
            _favorList("Completed Favors", completeFavors),
            _favorList("Refused Favors", refusedFavors)
          ],
        ),
      ),
    );
  }

  Widget _favorList(String title, List<Favor> favors) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Padding(
            child: Text(title),
            padding: EdgeInsets.only(top: 16.0),
          ),
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: favors.length,
              itemBuilder: (BuildContext context, int index) {
                final favor = favors[index];
                return Card(
                  key: ValueKey(favor.hashCode),
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: Padding(
                    child: Column(
                      children: <Widget>[
                        _header(favor),
                        _footer(favor)
                      ],
                    ),
                    padding: EdgeInsets.all(8),
                  ),
                );
              },
            ),
          )
        ],
      );
  }

  Widget _buildTab(String title) {
    return Tab(child: Text(title));
  }

  Widget _header(Favor favor) {
    return Row(
      children: <Widget>[
        CircleAvatar(
          backgroundImage: NetworkImage(
            favor.photoURL,
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 8),
            child: Text("${favor.name} asked you to..."),
          ),
        )
      ],
    );
  }

  Widget _footer(Favor favor) {
    if(favor.isCompleted) {
      return Container(
        margin: EdgeInsets.only(top: 8),
        alignment: Alignment.centerRight,
        child: Chip(
          label: Text("Completed at: ${favor.date}"),
        ),
      );
    }
    if(favor.isRequested) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FlatButton(
            child: Text("Refuse"),
            onPressed: () {},
          ),
          FlatButton(
            child: Text("Do"),
            onPressed: () {},
          )
        ],
      );
    }

    if(favor.isDoing) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FlatButton(
            child: Text("give up"),
            onPressed: () {},
          ),
          FlatButton(
            child: Text("complete"),
            onPressed: () {},
          )
        ],
      );
    }

    return Container();
  }
}




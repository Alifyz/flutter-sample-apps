class Favor {

  bool isRequested;
  bool isCompleted;
  bool isDoing;

  String date;
  String name;
  String photoURL = "https://i.pravatar.cc/300";

  Favor.mock(this.date, this.isCompleted, this.isDoing, this.isRequested, this.name);
}
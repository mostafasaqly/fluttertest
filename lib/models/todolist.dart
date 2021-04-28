class ToDoList {
    ToDoList({
        this.userId,
        this.id,
        this.title,
        this.completed,
    });

    int userId;
    int id;
    String title;
    bool completed;

    factory ToDoList.fromJson(Map<String, dynamic> json) => ToDoList(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        completed: json["completed"],
    );

}
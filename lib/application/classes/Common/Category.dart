class Category{
  final int id;
  final String name;

/*    "category": {
                "id": 3,
                "name": "Internship"
            },
            */

            Category.fromJson(Map<String , dynamic> jsonMap)
            : id =jsonMap['id'] ??  0,
            name =jsonMap['name'] ?? "";

}
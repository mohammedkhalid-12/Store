class Pagination{

/*    "meta": {
        "current_page": 80,
        "from": null,
        "last_page": 30,
        "links": [
            {
  
        "path": "http://localhost:8000/api/opportunity",
        "per_page": 10,
        "to": null,
        "total": 300
    } */

    final int current_page;
    final int last_page;
Pagination.fromJson(Map<String, dynamic> jsonMap)
:current_page=jsonMap['current_page'] ?? 0,
last_page =jsonMap['last_page']?? 0;

}
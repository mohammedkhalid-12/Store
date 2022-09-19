
class Opportunity{

  final int id ;
  final String title;
  //final Category category;
  //final Country country;
  final String  deadline;
 // final User createdBy;
  final String organizer;
 // final OpportunityDetail opportunityDetail  ;
  final String  createdAt ;
  final String updatedAt;


/* 
{
    "data": [
        {
            "id": 1,
            "title": "Quaerat corporis adipisci dolor dolores necessitatibus at perspiciatis libero qui voluptas dicta quaerat libero harum modi esse temporibus.",
            "category": {
                "id": 3,
                "name": "Internship"
            },
            "country": {
                "id": 124,
                "name": "Libya",
                "phoneCode": "218",
                "countryCode": "LY"
            },
            "deadline": "Sun, Jun 30, 2013 12:09 AM",
            "createdBy": {
                "id": 187,
                "firstName": "Mia",
                "lastName": "Hessel",
                "bio": "At praesentium animi tempore nobis quia qui est. Velit delectus eum non eum perspiciatis molestias. Perferendis velit perferendis itaque nemo debitis totam doloremque error.",
                "email": "marjorie.rodriguez@example.net",
                "profilePicture": "https://lorempixel.com/150/150/?40201",
                "joinedOn": "Nov 1, 2021"
            },
            "organizer": "Gorczany, Mayer and Paucek",
            "opportunityDetail": {
                "benefits": "Sunt laboriosam est ut ut ut libero perferendis. Tenetur facilis qui repellat. Debitis quis impedit dolore repellat ut maxime ducimus. Ut suscipit atque consequatur quos quia dolor. Est saepe quo aut ducimus sequi aperiam. Tenetur assumenda quaerat recusandae accusantium sit facere. Accusantium inventore occaecati ea inventore dolorum dolores autem. Officiis qui quaerat voluptatibus nulla necessitatibus. Doloremque odio quo ut voluptatem ullam aut praesentium. Sapiente nisi minus commodi et culpa unde dolor. Alias voluptatem architecto velit aliquid eos alias ad.",
                "applicationProcess": "Totam et adipisci ipsum doloremque sed voluptatibus. Quibusdam consequatur nihil excepturi nemo totam. Deleniti aliquid hic minima ducimus. Ut et voluptatibus porro sed numquam asperiores nostrum. Et error atque velit. Cumque eum blanditiis laborum provident saepe. Sed illo consectetur ullam molestias.",
                "furtherQueries": "At aut ex aut delectus eaque ullam excepturi. Amet aspernatur minima repudiandae ullam aut voluptatum. Enim eum voluptatem amet dicta. Est velit velit impedit ipsam beatae eum. Similique aut quas architecto quasi voluptatum voluptatem sed. Provident totam consequuntur nesciunt architecto quibusdam. Sed labore commodi possimus nostrum nulla.",
                "eligibilities": "Neque excepturi id dolor ratione nobis. Similique minus saepe quia. Autem sed hic nulla et ullam. Consequuntur ut suscipit totam aperiam vero ex repudiandae. Et dolorem possimus voluptatibus voluptates iure. Eius quod ipsum impedit labore voluptatem atque enim. Corrupti exercitationem qui dolores hic sed. Expedita expedita perferendis culpa numquam autem rerum quo. Aut aspernatur eos velit ipsa pariatur architecto aut. Quia optio ut ducimus qui ullam ut sint. Non quia molestias veniam unde.",
                "startDate": "Sun, Jun 22, 1997 2:36 AM",
                "endDate": "Thu, Oct 26, 2006 3:23 AM",
                "officialLink": "http://www.conroy.com/eos-nihil-iste-deserunt-consequatur-cumque-tempore",
                "eligibleRegions": null
            },
            "createdAt": "2021-11-01 16:54:43",
            "updatedAt": "2021-11-01 16:54:43"
        } */
  

  Opportunity.fromJsonMap(Map <String , dynamic> jsonMap)
  : id = jsonMap['id'] ??  0,
  title = jsonMap['title'] ?? "",
  /* category = 
  jsonMap['category'] != null ? Category.fromJson(jsonMap["category"]) : null,
 */  /* country = 
  jsonMap['country'] !=null ? Country.fromJson(jsonMap['country']): null,
 */  deadline = jsonMap['deadline'] ?? "",
  /* createdBy =
   jsonMap['user'] != null ? User.fromJson(jsonMap['user']) :  null,
  */ organizer = jsonMap['organizer'] ?? "",
  /* opportunityDetail = 
  jsonMap['opportunityDetail'] !=null ? OpportunityDetail.fromJsonMap(jsonMap['opportunityDetail'] ) :  null,
 */
 createdAt = jsonMap['createdAt'] ?? "",
updatedAt = jsonMap['updatedAt'] ?? "";



}
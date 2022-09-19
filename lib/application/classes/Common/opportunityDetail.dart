class OpportunityDetail {
/* 
     "benefits": "Sunt laboriosam est ut ut ut libero perferendis. Tenetur facilis qui repellat. Debitis quis impedit dolore repellat ut maxime ducimus. Ut suscipit atque consequatur quos quia dolor. Est saepe quo aut ducimus sequi aperiam. Tenetur assumenda quaerat recusandae accusantium sit facere. Accusantium inventore occaecati ea inventore dolorum dolores autem. Officiis qui quaerat voluptatibus nulla necessitatibus. Doloremque odio quo ut voluptatem ullam aut praesentium. Sapiente nisi minus commodi et culpa unde dolor. Alias voluptatem architecto velit aliquid eos alias ad.",
                "applicationProcess": "Totam et adipisci ipsum doloremque sed voluptatibus. Quibusdam consequatur nihil excepturi nemo totam. Deleniti aliquid hic minima ducimus. Ut et voluptatibus porro sed numquam asperiores nostrum. Et error atque velit. Cumque eum blanditiis laborum provident saepe. Sed illo consectetur ullam molestias.",
                "furtherQueries": "At aut ex aut delectus eaque ullam excepturi. Amet aspernatur minima repudiandae ullam aut voluptatum. Enim eum voluptatem amet dicta. Est velit velit impedit ipsam beatae eum. Similique aut quas architecto quasi voluptatum voluptatem sed. Provident totam consequuntur nesciunt architecto quibusdam. Sed labore commodi possimus nostrum nulla.",
                "eligibilities": "Neque excepturi id dolor ratione nobis. Similique minus saepe quia. Autem sed hic nulla et ullam. Consequuntur ut suscipit totam aperiam vero ex repudiandae. Et dolorem possimus voluptatibus voluptates iure. Eius quod ipsum impedit labore voluptatem atque enim. Corrupti exercitationem qui dolores hic sed. Expedita expedita perferendis culpa numquam autem rerum quo. Aut aspernatur eos velit ipsa pariatur architecto aut. Quia optio ut ducimus qui ullam ut sint. Non quia molestias veniam unde.",
                "startDate": "Sun, Jun 22, 1997 2:36 AM",
                "endDate": "Thu, Oct 26, 2006 3:23 AM",
                "officialLink": "http://www.conroy.com/eos-nihil-iste-deserunt-consequatur-cumque-tempore",
                "eligibleRegions": null
         
 */

final String benefits;
final String applicationProcess;
final String furtherQueries;
final String eligibilities;
final String startDate;
final String endDate;
final String officialLink;
final String eligibleRegions;

OpportunityDetail.fromJsonMap(Map <String  , dynamic > jsonMap)
:benefits = jsonMap['benefits'] ?? "",
applicationProcess = jsonMap['applicationProcess'] ?? "",
furtherQueries = jsonMap['furtherQueries'] ?? "",
startDate = jsonMap['startDate'] ?? "",
endDate = jsonMap['endDate'] ?? "",
officialLink = jsonMap['officialLink'] ?? "",
eligibleRegions = jsonMap['benefits'] ?? "",
eligibilities = jsonMap['eligibilities'] ?? "";

}
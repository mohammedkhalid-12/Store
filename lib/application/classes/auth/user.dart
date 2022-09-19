class User{

  final int id;
  final String firstName ;
  final String lastName;
  final String bio;
  final String email;
  final String profilePicture;
  final String joinedOn;



/*    "id": 187,
                "firstName": "Mia",
                "lastName": "Hessel",
                "bio": "At praesentium animi tempore nobis quia qui est. Velit delectus eum non eum perspiciatis molestias. Perferendis velit perferendis itaque nemo debitis totam doloremque error.",
                "email": "marjorie.rodriguez@example.net",
                "profilePicture": "https://lorempixel.com/150/150/?40201",
                "joinedOn": "Nov 1, 2021"
            }, */

            User.fromJson(Map <String , dynamic> jsonMap)
            : id = jsonMap['id'] ?? 0,
            firstName = jsonMap['firstName'] ?? "",
            lastName = jsonMap['lastName'] ?? "" ,
            bio = jsonMap['bio'] ?? "",
            email =jsonMap['email'] ?? "",
            profilePicture = jsonMap['profilePicture']?? "",
            joinedOn = jsonMap['joinedOn']?? "";
            
 


}
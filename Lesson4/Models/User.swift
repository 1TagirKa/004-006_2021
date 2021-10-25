import Foundation
import UIKit

class User {
    
    static var loginDetails: [String: String] = ["tattebakery@yandex.ru" : "pwwEQ5mL", "brianmcw@mail.ru" : "7sfqCKYN", "stephjianni@gmail.com" : "JpS8nFEd"]
    static var userIdFromMail = ["tattebakery@yandex.ru" : 0, "brianmcw@mail.ru" : 1, "stephjianni@gmail.com" : 2]
    static var all_users: [User] = []
    static var all_posts: [[Post]] = []
    
    static func getUsersPosts(putPosts: @escaping((_ posts: [Post]) -> Void), userID: Int) {
        sleep(2)
        putPosts(User.all_posts[userID])
    }
    
    static func сheckPassword(login: String, password: String) -> Bool {
        return User.loginDetails[login] == password
    }
    
    static func addInitialUsers() {
        User.all_users.append(User(name: "tattebakery", profileImg: UIImage.init(named: "tattebakery_photo_account") ?? UIImage(),status: "Gathering around Breakfas"))
        User.all_users.append(User(name: "brianmcw", profileImg: UIImage.init(named: "brianmcw_photo_account") ?? UIImage(), status: "Boston photographer"))
        User.all_users.append(User(name: "stephjianni", profileImg: UIImage.init(named: "stephjianni_photo_account") ?? UIImage(), status: "Life enthusiast."))
        addContentForInitialUsers()
    }
    
    private static func addContentForInitialUsers() {
        //add the posts of the first user
        all_posts.append([])
        all_posts[0].append(Post(image: UIImage.init(named: "tattebakery_photo_1"), text: "Back at it! With a glorious slice of Bourbon infused pumpkin pie with pecans and streusel on top! Our incredible pastry team roast fresh pumpkins in house creating this delicious Fall treat. 🙌🏻🍁🍂🥧🧡"))
        all_posts[0].append(Post(image: UIImage.init(named: "tattebakery_photo_2"), text: "Tatte Clarendon here we go!🥳☕️🥐🍳💛Doors open tomorrow, Wednesday at 8am! Cannot wait to finally meet all of you!See you tomorrow! 🥳☕️☕️🥐🥐🥐🍳🍳🍳💛💛💛💛"))
        all_posts[0].append(Post(image: UIImage.init(named: "tattebakery_photo_3"), text: nil))
        all_posts[0].append(Post(image: UIImage.init(named: "tattebakery_photo_4"), text: "Chocolate Krembos are back! 🥳"))
        all_posts[0].append(Post(image: UIImage.init(named: "tattebakery_photo_5"), text: "This one is so good! Summer Shakshukah! ☀️🍳🍅🌽🌿 "))
        all_posts[0].append(Post(image: nil, text: "All the Fall - Winter treats ☕️🥧🍁 Winter spice latte and that delicious Pumpkin Pie, Maple-Pecan Pie all coming back this coming Wednesday 10/13 ☕️🥧🍂🍁along with our Fall-Winter menu and new delicious savory and bakery menu items 🍂🍁🍽. Beautiful pic"))
        all_posts[0].append(Post(image: nil, text: "Fall day and thank you all for the massive love 🍁🍂🧡🥐🍳☕️"))
        all_posts[0].append(Post(image: nil, text: "I’m going to be as present as I can be to truly feel and enjoy every moment I have on this earth. ❤️"))
        
        //add the posts of the second user
        all_posts.append([])
        all_posts[1].append(Post(image: UIImage.init(named: "brianmcw_photo_1"), text: "Go for the gold 🍂💛Honey locust trees around golden hour earlier this week on Dartmouth Street.Have a great weekend!"))
        all_posts[1].append(Post(image: UIImage.init(named: "brianmcw_photo_2"), text: "In the mood on Marlborough 🎃🌾🍂"))
        all_posts[1].append(Post(image: UIImage.init(named: "brianmcw_photo_3"), text: "Worshipping at the church of autumn 🍁When we grow impatient with the slow pace of autumn in the city, we sometimes head north."))
        all_posts[1].append(Post(image: UIImage.init(named: "brianmcw_photo_4"), text: nil))
        all_posts[1].append(Post(image: UIImage.init(named: "brianmcw_photo_5"), text: nil))
        all_posts[1].append(Post(image: nil, text: "The tones they are a changin' 🤎🎶Rounding the corner to September brings light that, as they say, hits different"))
        all_posts[1].append(Post(image: nil, text: "May the top-down weather continue a while longer 🌞"))
        all_posts[1].append(Post(image: UIImage.init(named: "brianmcw_photo_6"), text: nil))
        all_posts[1].append(Post(image: UIImage.init(named: "brianmcw_photo_7"), text: "I think I'll go to East Boston ⛵"))
        
        //add the posts of the third user
        all_posts.append([])
        all_posts[2].append(Post(image: UIImage.init(named: "stephjianni_photo_1"), text: "✨ I’ve been fairly absent on social media for the last 6 months to recoup and refocus my energy to live in the moment with the people I love most instead of constantly being consumed by this travel and social media lifestyle. While I am eternally grateful for the opportunities to travel the world, work with people and do things that I otherwise wouldn’t have been able to do the last 5 years, I know that I will be moving forward towards a life that’s more balanced, a little more settled and filled with adventure and joy. I will still continue to travel and to create and I will continue to share my passions with you all, but instead of constantly being glued to a screen, I’m going to be as present as I can be to truly feel and enjoy every moment I have on this earth. ❤️"))
        all_posts[2].append(Post(image: UIImage.init(named: "stephjianni_photo_2"), text: "1 balloon, 2 balloon, 3 balloon..."))
        all_posts[2].append(Post(image: UIImage.init(named: "stephjianni_photo_3"), text: "What dreams are made of ✨"))
        all_posts[2].append(Post(image: UIImage.init(named: "stephjianni_photo_4"), text: "The perfect Sunday? I think so ✨"))
        all_posts[2].append(Post(image: UIImage.init(named: "stephjianni_photo_5"), text: nil))
        all_posts[2].append(Post(image: UIImage.init(named: "stephjianni_photo_6"), text: nil))
        all_posts[2].append(Post(image: nil, text: "Where’s Waldo but Waldo wearing a more modern shade of mustard?"))
        all_posts[2].append(Post(image: nil, text: "❤️ I’m so lucky to have found you in this crazy world. There will never be enough words to tell you how much I love you. You are unlike anyone else I’ve ever known and I’m so grateful to get to spend this life with you. I can’t wait to see what this next year has in store and I know that all your amazing hard work will continue to pay off in ways we couldn’t even imagine! Thank you for continually making me laugh, for being my forever dance partner and for always being there no matter what life throws our way. Life isn’t always rainbows and sunshine, but with you, it’s pretty darn close."))
    }
    
    static var loggedInUserId: Int = 0
    
    static func setLoggedInUserId(mail: String) {
        User.loggedInUserId = userIdFromMail[mail] ?? 0
    }
    
    var name: String
    var profileImg: UIImage
    var status: String
    var posts: [Post] = []
    
    init(name: String, profileImg: UIImage, status: String) {
        self.name = name
        self.profileImg = profileImg
        self.status = status
    }
    
}

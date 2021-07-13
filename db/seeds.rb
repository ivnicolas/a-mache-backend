# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

jobs = Category.create(
    name: "Jobs"
)

for_sale = Category.create(
    name: "For Sale"
)

housing = Category.create(
    name: "Housing"
)

gigs = Category.create(
    name: "Gigs"
)

services = Category.create(
    name: "Services"
)

community = Category.create(
    name: "Community"
)

admin  = Subcategory.create(
    name: "Administration",
    category: jobs
)

health  = Subcategory.create(
    name: "Healtchcare",
    category: jobs
)

gov  = Subcategory.create(
    name: "Government",
    category: jobs
)

labor  = Subcategory.create(
    name: "General Labor",
    category: jobs
)

retail_wholesale  = Subcategory.create(
    name: "Retail/Wholesale",
    category: jobs
)

security  = Subcategory.create(
    name: "Security",
    category: jobs
)

hospitality  = Subcategory.create(
    name: "Hospitality",
    category: jobs
)

computer  = Subcategory.create(
    name: "Computer",
    category: gigs
)

creative = Subcategory.create(
    name: "Creative",
    category: gigs
)

domestic = Subcategory.create(
    name: "Domestic",
    category: gigs
)

translation = Subcategory.create(
    name: "Translation",
    category: gigs
)

auto_parts  = Subcategory.create(
    name: "Auto Parts",
    category: for_sale
)

car_trucks  = Subcategory.create(
    name: "Cars and Trucks",
    category: for_sale
)

cell_phones  = Subcategory.create(
    name: "Cell Phones",
    category: for_sale
)

motorcylce  = Subcategory.create(
    name: "Motorcycle Parts",
    category: for_sale
)

free  = Subcategory.create(
    name: "Free",
    category: for_sale
)

appliances  = Subcategory.create(
    name: "Appliances",
    category: for_sale
)

furniture  = Subcategory.create(
    name: "Furniture",
    category: for_sale
)

electronics  = Subcategory.create(
    name: "Electronics",
    category: for_sale
)

apartments  = Subcategory.create(
    name: "Apartments",
    category: housing
)

land  = Subcategory.create(
    name: "Land",
    category: housing
)

storage  = Subcategory.create(
    name: "Storage",
    category: housing
)

vacation  = Subcategory.create(
    name: "Vacation Rentals",
    category: housing
)

volunteers = Subcategory.create(
    name: "Volunteers",
    category: community
)

local_news = Subcategory.create(
    name: "Local News",
    category: community
)

classes = Subcategory.create(
    name: "Classes",
    category: community
)

trade = Subcategory.create(
    name: "Trade School",
    category: community
)

general = Subcategory.create(
    name: "General",
    category: community
)

automotive = Subcategory.create(
    name: "Automotive",
    category: services
)

beauty = Subcategory.create(
    name: "Beauty",
    category: services
)

legal = Subcategory.create(
    name: "Legal",
    category: services
)

household = Subcategory.create(
    name: "Household",
    category: services
)

computer = Subcategory.create(
    name: "Computer",
    category: services
)

lessons = Subcategory.create(
    name: "Lessons",
    category: services
)

writing = Subcategory.create(
    name: "Writing and Translation",
    category: services
)


Post.create ([

    {
        title: "Receptionist Needed ASAP!",
        description: "Full time receptionist for a law office. Looking for neat, organized, professional 
        to run our front desk. Must have technical skills- Microsoft word, Excel, Gmail, scanning, fax , must type at 
        least 50 wpm and have experience answering a multi line phone system. We are looking for someone with a grounded 
        personality, common sense, reliable transportation and the ability to be at work on time from 8:00 to 4:30 on a daily 
        basis Monday through Friday. Salary is $16.50 per hour, no health benefits. Start date is immediate. If you do not have 
        office experience as noted above DO NOT send your resume." ,
        contact_email: "theoffice@work.com",
        contact_phone: "777-282-3011",
        location: "Port Au Prince, Haiti",
        subcategory: admin,
        category: admin.category
    },
    {
        title: "Front Desk Associate for Premiere Resort " ,
        description: "Guest Services Agent (GSA) performs tasks of
        organizing and managing each guests stay through a combination of
        reservations management and concierge services. They are
        undeniably committed to providing guests with a positive stay by
        ensuring that they are assigned to a room which meets their
        needs. A successful GSA will be mindful of
        their contribution to an overall clean and positive atmosphere in
        the hotel. A GSA should also be able to display a polite, helpful
        and available demeanor towards guests, always providing
        assistance or information as necessary." ,
        contact_email: "thenicehotel@bougie.com",
        contact_phone: "333-202-1111",
        location: "Cap-Hatien, Haiti",
        subcategory: hospitality,
        category: hospitality.category
    },
    {
        title: "Translate 500 Document to French" ,
        description: "Script in need of translation. Will to negotiate rate. Please contact" ,
        contact_email: "writerneeded@lost.com" ,
        contact_phone: "888-999-3333",
        location: "Jeremie, Haiti",
        subcategory: writing,
        category: writing.category
    },
    {
        title: "House Cook Wanted" ,
        description: "Need a part time house cook. Position will be paid weekly. Please contact to set up an interview",
        contact_email: "cooks4hire@cheffing.com" ,
        contact_phone: "999-000-9999",
        location: "Hinche,Haiti",
        subcategory: household,
        category: household.category
    },
    {
        title: "Learn Plumbing for Free" ,
        description: "Join our 4 week plumbing course. To register, message on WhatsApp or email",
        contact_email: "plumpool@gidget.org",
        contact_phone: "232-333-1111",
        location: "Port Au Prince, Haiti",
        subcategory: trade,
        category: trade.category
    },
    {
        title: "Beach Clean Up Needs Volunteers in Jacmel! " ,
        description: "Looking for volunteers to clean the beautiful beaches of Jacmel this week ",
        photo: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.britannica.com%2Fplace%2FJacmel&psig=AOvVaw30irPg9GOd-sbQiMByGYQ7&ust=1626224612745000&source=images&cd=vfe&ved=0CAoQjRxqFwoTCMCM8prt3vECFQAAAAAdAAAAABAD",
        contact_email: "beachbeetch@swam.org",
        contact_phone: "383-948-6533",
        location: "Jacmel, Haiti",
        subcategory: volunteers,
        category: volunteers.category
    },
    {
        title: "Countryside Home Available for Rent in Hinche" ,
        description: "Beautiful house located in the countryside. Come enjoy serenity" ,
        photo: "https://www.google.com/url?sa=i&url=http%3A%2F%2Fwww.traveladventures.org%2Fcontinents%2Famericas%2Fhinche.html&psig=AOvVaw2ehSxQwXq_LutNbVE8qon-&ust=1626224480711000&source=images&cd=vfe&ved=0CAoQjRxqFwoTCMjt_tjs3vECFQAAAAAdAAAAABAT",
        contact_email: "vacationrental@rentme.pls",
        contact_phone: "333-434-0202" ,
        location: "Hinche, Haiti",
        subcategory: vacation,
        category: vacation.category
    },
    {
        title: "2 Bedroom Apartment Available in Petionville" ,
        description: "Spacious 2 bedroom apartment available for rent on the second floor. Unit comes with one off-street parking.
        Laundry hookups available in the basement." ,
        price: 250,
        photo: "https://cf.bstatic.com/xdata/images/hotel/max1024x768/34398281.jpg?k=9d5f1fc67cae7b2a85701e02d260bd483020291464a6107de0481c62fa86373a&o=&hp=1",
        contact_email: "apartmenthookup@spots.com",
        contact_phone: "333-333-3333",
        location: "Petionville, Haiti",
        subcategory: apartments,
        category: apartments.category
    },
    {
        title: "Samsung Galaxy JV3 For Sale" ,
        description: "Samsung Galaxy J3V 16GB Black New in 2018. Used 7 months and in storage since.
         With Otterbox Case and Glass Shield !! $90 OBO. Looks Brand New !! Unlocked and Factory Reset. 
         Use with any service !! Hardly ever used. Bought for someone for emergency calls only. Please message me if interested.",
        price: 100,
        photo: "https://images.craigslist.org/01616_jiGE1P5t5Bxz_0dB0i8_600x450.jpg" ,
        contact_email: "phoneguy@tele.net",
        contact_phone: "555-555-5555",
        location: "Port Au Prince, Haiti",
        subcategory: cell_phones,
        category: cell_phones.category
    },
    {
        title: "2010 Jeep Cherokee for Sale" ,
        description: "New suspension lifted new stuts axle upper and lower a frames driveshafts 2018
         wheels 18 ”wheel spacers to much to list oil change every4000 miles runs excellent no lights on a beast 190 k 
         never know it no rust" ,
        price: 3000.00,
        photo: "https://media.ed.edmunds-media.com/for-sale/24-1j4pr4gk9ac141453/img-1-600x400.jpg",
        contact_email: "jeanclaude@hi.info",
        contact_phone: "999-888-2312",
        location: "Del Mas, Haiti",
        subcategory: car_trucks,
        category: car_trucks.category
    }

])

puts "mama we made it"
-- THE PHOTOS IN THE HOST, GUEST, AND PROPERTYPHOTOS TABLES ARE INSERTED WITH A PATH AND MAY CAUSE ERRORS IF THE PATH DON'T CONTAIN PHOTOS WITH THE SAME NAMES.
-- You can replace the the path with any string , like: 'test'.

INSERT INTO User (Name, Email, Phone_Number, Social_Media_Link, Preferences) VALUES
('John Doe', 'john.doe@example.com', ' (123) 456-7890', 'https://www.facebook.com/johndoe', '{"Language": "English", "Currency": "USD"}'),
('Jane Smith', 'jane.smith@example.com', ' (987) 654-3210', 'https://www.twitter.com/janesmith', '{"Language": "Spanish", "Currency": "EUR"}'),
('Michael Johnson', 'michael.johnson@example.com', ' (555) 555-5555', 'https://www.linkedin.com/michaeljohnson', '{"Language": "English", "Currency": "USD"}'),
('Emma Davis', 'emma.davis@example.com', ' (777) 777-7777', 'https://www.instagram.com/emmadavis', '{"Language": "French", "Currency": "EUR"}'),
('William Brown', 'william.brown@example.com', ' (333) 333-3333', 'https://www.facebook.com/williambrown', '{"Language": "German", "Currency": "EUR"}'),
('Olivia Wilson', 'olivia.wilson@example.com', ' (666) 666-6666', 'https://www.twitter.com/oliviawilson', '{"Language": "Spanish", "Currency": "USD"}'),
('James Lee', 'james.lee@example.com', ' (444) 444-4444', 'https://www.linkedin.com/jameslee', '{"Language": "English", "Currency": "USD"}'),
('Ava Harris', 'ava.harris@example.com', ' (222) 222-2222', 'https://www.instagram.com/avaharris', '{"Language": "French", "Currency": "EUR"}'),
('Logan Patel', 'logan.patel@example.com', ' (111) 111-1111', 'https://www.facebook.com/loganpatel', '{"Language": "German", "Currency": "EUR"}'),
('Sophia Kumar', 'sophia.kumar@example.com', ' (999) 999-9999', 'https://www.twitter.com/sophiakumar', '{"Language": "Spanish", "Currency": "USD"}'),
('Benjamin Miller', 'benjamin.miller@example.com', ' (777) 888-9999', 'https://www.linkedin.com/benjaminmiller', '{"Language": "English", "Currency": "USD"}'),
('Mia Thomas', 'mia.thomas@example.com', ' (333) 444-5555', 'https://www.instagram.com/miathomas', '{"Language": "French", "Currency": "EUR"}'),
('Elijah Garcia', 'elijah.garcia@example.com', ' (222) 555-4444', 'https://www.facebook.com/elijahgarcia', '{"Language": "German", "Currency": "EUR"}'),
('Isabella Brown', 'isabella.brown@example.com', ' (111) 222-3333', 'https://www.twitter.com/isabellabrown', '{"Language": "Spanish", "Currency": "USD"}'),
('William Smith', 'william.smith@example.com', ' (888) 777-6666', 'https://www.linkedin.com/williamsmith', '{"Language": "English", "Currency": "USD"}'),
('Olivia Davis', 'olivia.davis@example.com', ' (444) 333-2222', 'https://www.instagram.com/oliviadavis', '{"Language": "French", "Currency": "EUR"}'),
('Liam Wilson', 'liam.wilson@example.com', ' (222) 111-4444', 'https://www.facebook.com/liamwilson', '{"Language": "German", "Currency": "EUR"}'),
('Emma Miller', 'emma.miller@example.com', ' (999) 888-5555', 'https://www.twitter.com/emmamiller', '{"Language": "Spanish", "Currency": "USD"}'),
('Noah Kumar', 'noah.kumar@example.com', ' (777) 222-3333', 'https://www.linkedin.com/noahkumar', '{"Language": "English", "Currency": "USD"}'),
('Ava Lee', 'ava.lee@example.com', ' (111) 555-6666', 'https://www.instagram.com/avalee', '{"Language": "French", "Currency": "EUR"}'),
('Liam Patel', 'liam.patel@example.com', ' (666) 444-3333', 'https://www.facebook.com/liampatel', '{"Language": "German", "Currency": "EUR"}'),
('Oliver Thomas', 'oliver.thomas@example.com', ' (888) 999-6666', 'https://www.twitter.com/oliverthomas', '{"Language": "Spanish", "Currency": "USD"}'),
('Sophia Garcia', 'sophia.garcia@example.com', ' (444) 555-4444', 'https://www.linkedin.com/sophiagarcia', '{"Language": "English", "Currency": "USD"}'),
('Lucas Harris', 'lucas.harris@example.com', ' (222) 111-5555', 'https://www.instagram.com/lucasharris', '{"Language": "French", "Currency": "EUR"}'),
('Ava Kumar', 'ava.kumar@example.com', ' (999) 888-7777', 'https://www.facebook.com/avakumar', '{"Language": "German", "Currency": "EUR"}'),
('Mia Smith', 'mia.smith@example.com', ' (777) 777-6666', 'https://www.twitter.com/miasmith', '{"Language": "Spanish", "Currency": "USD"}'),
('Jackson Wilson', 'jackson.wilson@example.com', ' (555) 555-5555', 'https://www.linkedin.com/jacksonwilson', '{"Language": "English", "Currency": "USD"}'),
('Charlotte Davis', 'charlotte.davis@example.com', ' (123) 456-7890', 'https://www.instagram.com/charlottedavis', '{"Language": "French", "Currency": "EUR"}'),
('Aiden Lee', 'aiden.lee@example.com', ' (987) 654-3210', 'https://www.facebook.com/aidenlee', '{"Language": "German", "Currency": "EUR"}'),
('Aria Patel', 'aria.patel@example.com', ' (555) 555-5555', 'https://www.twitter.com/ariapatel', '{"Language": "Spanish", "Currency": "USD"}'),
('Grayson Thomas', 'grayson.thomas@example.com', ' (333) 444-5555', 'https://www.linkedin.com/graysonthomas', '{"Language": "English", "Currency": "USD"}'),
('Zoe Wilson', 'zoe.wilson@example.com', ' (777) 777-7777', 'https://www.instagram.com/zoewilson', '{"Language": "French", "Currency": "EUR"}'),
('Carter Davis', 'carter.davis@example.com', ' (666) 666-6666', 'https://www.facebook.com/carterdavis', '{"Language": "German", "Currency": "EUR"}'),
('Riley Smith', 'riley.smith@example.com', ' (444) 444-4444', 'https://www.twitter.com/rileysmith', '{"Language": "Spanish", "Currency": "USD"}'),
('Lincoln Wilson', 'lincoln.wilson@example.com', ' (222) 222-2222', 'https://www.linkedin.com/lincolnwilson', '{"Language": "English", "Currency": "USD"}'),
('Elizabeth Lee', 'elizabeth.lee@example.com', ' (123) 123-1234', 'https://www.instagram.com/elizabethlee', '{"Language": "French", "Currency": "EUR"}'),
('Mason Kumar', 'mason.kumar@example.com', ' (567) 567-5678', 'https://www.facebook.com/masonkumar', '{"Language": "German", "Currency": "EUR"}'),
('Addison Brown', 'addison.brown@example.com', ' (456) 456-4567', 'https://www.twitter.com/addisonbrown', '{"Language": "Spanish", "Currency": "USD"}'),
('Evelyn Smith', 'evelyn.smith@example.com', ' (654) 654-6543', 'https://www.linkedin.com/evelynsmith', '{"Language": "English", "Currency": "USD"}'),
('Hunter Davis', 'hunter.davis@example.com', ' (789) 789-7890', 'https://www.instagram.com/hunterdavis', '{"Language": "French", "Currency": "EUR"}'),
('Harper Lee', 'harper.lee@example.com', ' (987) 987-9876', 'https://www.facebook.com/harperlee', '{"Language": "German", "Currency": "EUR"}'),
('Luke Patel', 'luke.patel@example.com', ' (444) 444-4444', 'https://www.twitter.com/lukepatel', '{"Language": "Spanish", "Currency": "USD"}'),
('Avery Wilson', 'avery.wilson@example.com', ' (111) 111-1111', 'https://www.linkedin.com/averywilson', '{"Language": "English", "Currency": "USD"}'),
('Riley Davis', 'riley.davis@example.com', ' (555) 555-5555', 'https://www.instagram.com/rileydavis', '{"Language": "French", "Currency": "EUR"}'),
('Scarlett Smith', 'scarlett.smith@example.com', ' (777) 777-7777', 'https://www.facebook.com/scarlettsmith', '{"Language": "German", "Currency": "EUR"}'),
('Gabriel Wilson', 'gabriel.wilson@example.com', ' (333) 333-3333', 'https://www.twitter.com/gabrielwilson', '{"Language": "Spanish", "Currency": "USD"}'),
('Zoe Lee', 'zoe.lee@example.com', ' (222) 222-2222', 'https://www.linkedin.com/zoelee', '{"Language": "English", "Currency": "USD"}'),
('Mason Brown', 'mason.brown@example.com', ' (999) 999-9999', 'https://www.instagram.com/masonbrown', '{"Language": "French", "Currency": "EUR"}'),
('Layla Patel', 'layla.patel@example.com', ' (123) 123-1234', 'https://www.facebook.com/laylapatel', '{"Language": "German", "Currency": "EUR"}'),
('Liam Kumar', 'liam.kumar@example.com', ' (333) 333-3333', 'https://www.twitter.com/liamkumar', '{"Language": "Spanish", "Currency": "USD"}'),
('Oliver Smith', 'oliver.smith@example.com', ' (888) 888-8888', 'https://www.linkedin.com/oliversmith', '{"Language": "English", "Currency": "USD"}'),
('Alice Johnson', 'alice@example.com', ' 555-555-5252', 'https://www.facebook.com/alice', '{"Language": "English", "Currency": "USD"}'),
('Bob Smith', 'bob@example.com', ' 555-555-5353', 'https://www.facebook.com/bob', '{"Language": "French", "Currency": "EUR"}'),
('Charlie Brown', 'charlie@example.com', ' 555-555-5454', 'https://www.facebook.com/charlie', '{"Language": "Spanish", "Currency": "USD"}'),
('David Miller', 'david@example.com', ' 555-555-5555', 'https://www.facebook.com/david', '{"Language": "English", "Currency": "USD"}'),
('Emma Davis', 'emma@example.com', ' 555-555-5656', 'https://www.facebook.com/emma', '{"Language": "German", "Currency": "EUR"}'),
('Frank Wilson', 'frank@example.com', ' 555-555-5757', 'https://www.facebook.com/frank', '{"Language": "Spanish", "Currency": "USD"}'),
('Grace Martinez', 'grace@example.com', ' 555-555-5858', 'https://www.facebook.com/grace', '{"Language": "English", "Currency": "USD"}'),
('Hannah Lee', 'hannah@example.com', ' 555-555-5959', 'https://www.facebook.com/hannah', '{"Language": "French", "Currency": "EUR"}'),
('Isaac Hall', 'isaac@example.com', ' 555-555-6060', 'https://www.facebook.com/isaac', '{"Language": "English", "Currency": "USD"}'),
('Julia Turner', 'julia@example.com', ' 555-555-6161', 'https://www.facebook.com/julia', '{"Language": "Spanish", "Currency": "USD"}'),
('Kevin Scott', 'kevin@example.com', ' 555-555-6262', 'https://www.facebook.com/kevin', '{"Language": "German", "Currency": "EUR"}'),
('Lily Allen', 'lily@example.com', ' 555-555-6363', 'https://www.facebook.com/lily', '{"Language": "Spanish", "Currency": "USD"}'),
('Mia Harris', 'mia@example.com', ' 555-555-6464', 'https://www.facebook.com/mia', '{"Language": "English", "Currency": "USD"}'),
('Noah Clark', 'noah@example.com', ' 555-555-6565', 'https://www.facebook.com/noah', '{"Language": "French", "Currency": "EUR"}'),
('Olivia Young', 'olivia@example.com', ' 555-555-6666', 'https://www.facebook.com/olivia', '{"Language": "English", "Currency": "USD"}');

INSERT INTO Countries (CountryID, Name, Country_Code)
VALUES
(1, 'United States', '1'),
(2, 'Canada', '1'),
(3, 'United Kingdom', '44'),
(4, 'Australia', '61'),
(5, 'Germany', '49'),
(6, 'France', '33'),
(7, 'Spain', '34'),
(8, 'Italy', '39'),
(9, 'Japan', '81'),
(10, 'China', '86'),
(11, 'Brazil', '55'),
(12, 'India', '91'),
(13, 'South Africa', '27'),
(14, 'Mexico', '52'),
(15, 'Russia', '7'),
(16, 'Singapore', '65'),
(17, 'Hong Kong', '852'),
(18, 'Argentina', '54'),
(19, 'Netherlands', '31'),
(20, 'Switzerland', '41'),
(21, 'Sweden', '46'),
(22, 'Norway', '47');

-- User_has_Countries
INSERT INTO User_has_Countries (UserID, CountryID)
VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8), (9, 9), (10, 10),
(11, 11), (12, 12), (13, 13), (14, 14), (15, 15), (16, 16), (17, 17), (18, 18), (19, 19), (20, 20),
(21, 21), (22, 22), (23, 1), (24, 2), (25, 3), (26, 4), (27, 5), (28, 6), (29, 7), (30, 8), (31, 9), (32, 10),
(33, 11), (34, 12), (35, 13), (36, 14), (37, 15), (38, 16), (39, 17), (40, 18), (41, 19), (42, 20),
(43, 21), (44, 22), (45, 1), (46, 2), (47, 3), (48, 4), (49, 5), (50, 6), (51, 7), (52, 8), (53, 9), (54, 10),
(55, 11), (56, 12), (57, 13), (58, 14), (59, 15), (60, 16), (61, 17), (62, 18), (63, 19), (64, 20),
(65, 21), (66, 22);


-- Insert entries for Languages table
INSERT INTO Languages (Name) VALUES
('English'),
('Spanish'),
('French'),
('German'),
('Italian'),
('Portuguese'),
('Dutch'),
('Russian'),
('Chinese'),
('Japanese'),
('Korean'),
('Arabic'),
('Turkish'),
('Greek'),
('Swedish'),
('Norwegian'),
('Danish'),
('Finnish'),
('Polish'),
('Hungarian'),
('Romanian');


-- Insert entries for User_has_Languages table
INSERT INTO User_has_Languages (User_UserID, Languages_LanguageID) VALUES
(1, 1), (1, 2), (2, 3), (2, 4), (3, 5), (3, 6), (4, 7), (4, 8), (5, 9), (5, 10),
(6, 11), (6, 12), (7, 13), (7, 14), (8, 15), (8, 16), (9, 17), (9, 18), (10, 19), (10, 20),
(11, 21), (12, 1), (13, 2), (14, 3), (15, 4), (16, 5), (17, 6), (18, 7), (19, 8), (20, 9), (21, 10),
(22, 11), (23, 12), (24, 13), (25, 14), (26, 15), (27, 16), (28, 17), (29, 18), (30, 19), (31, 20),
(32, 21), (33, 1), (34, 2), (35, 3), (36, 4), (37, 5), (38, 6), (39, 7), (40, 8), (41, 9), (42, 10),
(43, 11), (44, 12), (45, 13), (46, 14), (47, 15), (48, 16), (49, 17), (50, 18), (51, 19), (52, 20),
(53, 21), (54, 1), (55, 2), (56, 3), (57, 4), (58, 5), (59, 6), (60, 7), (61, 8), (62, 9), (63, 10),
(64, 11), (65, 12), (66, 13);


-- Host  
INSERT INTO Host (UserID, AboutMe, Profile_Picture)
VALUES
(1, 'I have been hosting for 5 years and I love meeting new people!', LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\HOST1.jpeg')),
(2, 'Experienced host with a cozy place for you!', LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\HOST2.jpeg')),
(3, 'Welcome to my beautiful home! Fluent in English and Spanish.', LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\HOST3.jpeg')),
(4, 'I enjoy hosting travelers and sharing local tips.', LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\HOST4.jpeg')),
(5, 'German-speaking host with 4 years of experience.', LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\HOST5.jpeg')),
(6, 'Hola! Fluent in Spanish and ready to host you.', LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\HOST6.jpeg')),
(7, 'Experienced host with a love for travel and adventure.', LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\HOST7.jpeg')),
(8, 'French and English speaker. Looking forward to hosting you.', LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\HOST8.jpeg')),
(9, 'Cozy accommodations and a warm welcome.', LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\HOST9.jpeg')),
(10, 'My Property Is Yours.', LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\HOST10.jpeg')),
(11, 'Spanish and English host ready to make your stay enjoyable.', LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\HOST11.jpeg')),
(12, 'Experienced host with knowledge of the local area.', LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\HOST12.jpeg')),
(13, 'Enjoy your stay in my cozy French-speaking home.', LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\HOST13.jpeg')),
(14, 'A friendly host with a love for meeting new people.', LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\HOST14.jpeg')),
(15, 'German host who will make you feel at home.', LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\HOST15.jpeg')),
(16, 'Relax in my Spanish-speaking space.', LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\HOST16.jpeg')),
(17, 'Experienced host with a passion for hospitality.', LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\HOST17.jpeg')),
(18, 'Bonjour! Fluent in French and ready to host you.', LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\HOST18.jpeg')),
(19, 'Experience a warm welcome in my cozy home.', LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\HOST19.jpeg')),
(20, 'Feel at home in my German-speaking space.', LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\HOST20.jpeg')),
(21, 'Enjoy your stay with a Spanish and English-speaking host.', LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\HOST21.jpeg')),
(22, 'Experienced host with local recommendations.', LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\HOST22.jpeg'));

-- Guest
INSERT INTO Guest (UserID, AboutMe, Profile_Picture, Preferences, TravelHistory) VALUES
(23, 'Travel enthusiast looking for unique experiences!', LOAD_File('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\GUEST1.jpeg'), '{"Language": "English", "Currency": "USD"}', 'Frequent traveler with stays across Europe.'),
(24, 'Adventurous spirit ready to explore new destinations.', LOAD_File('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\GUEST2.jpeg'), '{"Language": "Spanish", "Currency": "EUR"}', 'Experienced traveler with a taste for local cuisine.'),
(25, 'Traveler with an appreciation for diverse cultures.', LOAD_File('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\GUEST3.jpeg'), '{"Language": "English", "Currency": "USD"}', 'Previous stays in Asia, Europe, and South America.'),
(26, 'Exploring the world one destination at a time.', LOAD_File('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\GUEST4.jpeg'), '{"Language": "French", "Currency": "EUR"}', 'Frequent business traveler with a preference for comfortable accommodations.'),
(27, 'German-speaking traveler ready for new adventures.' , LOAD_File('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\GUEST5.jpeg'), '{"Language": "German", "Currency": "EUR"}', 'Visited multiple cities across Germany and neighboring countries.'),
(28, 'Hola! Spanish-speaking traveler with a love for art and history.', LOAD_File('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\GUEST6.jpeg'), '{"Language": "Spanish", "Currency": "USD"}', 'Cultural explorer with an interest in museums and historical sites.'),
(29, 'Traveler with a passion for outdoor activities and nature.',  LOAD_File('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\GUEST7.jpeg'), '{"Language": "English", "Currency": "USD"}', 'Outdoor enthusiast with hiking and camping experiences.'),
(30, 'French and English-speaking guest ready for memorable stays.', LOAD_File('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\GUEST8.jpeg'), '{"Language": "French", "Currency": "EUR"}', 'Culinary traveler with a taste for local delicacies.'),
(31, 'Experienced traveler looking for comfortable accommodations.', LOAD_File('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\GUEST9.jpeg'), '{"Language": "English", "Currency": "USD"}', 'Numerous stays in various cities with a focus on comfort.'),
(32, 'German-speaking guest with an interest in history and culture.',  LOAD_File('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\GUEST10.jpeg'), '{"Language": "German", "Currency": "EUR"}', 'Visited historical landmarks and museums across Europe.'),
(33, 'Spanish and English-speaking traveler with a love for architecture.', LOAD_File('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\GUEST11.jpeg'), '{"Language": "Spanish", "Currency": "USD"}', 'Appreciates unique architectural styles during travels.');

-- Guest without profile picture
INSERT INTO Guest (UserID, AboutMe, Preferences, TravelHistory) VALUES
(34, 'Experienced traveler with a passion for exploring local cuisine.', '{"Language": "English", "Currency": "USD"}', 'Foodie traveler with a preference for dining at local eateries.'),
(35, 'Bonjour! French-speaking guest looking for cultural experiences.', '{"Language": "French", "Currency": "EUR"}', 'Enjoys cultural festivals and art exhibitions during trips.'),
(36, 'Adventurous traveler with an appreciation for local traditions.', '{"Language": "English", "Currency": "USD"}', 'Participates in local festivals and cultural events.'),
(37, 'German-speaking traveler with a love for the outdoors.', '{"Language": "German", "Currency": "EUR"}', 'Frequent hiker and nature enthusiast during travels.'),
(38, 'Spanish-speaking guest with an interest in local history and museums.', '{"Language": "Spanish", "Currency": "USD"}', 'Visits historical museums and landmarks during trips.'),
(39, 'Traveler with a passion for adventure and adrenaline activities.', '{"Language": "English", "Currency": "USD"}', 'Enjoys outdoor activities such as zip-lining and hiking.'),
(40, 'French and English-speaking guest ready for cultural exploration.', '{"Language": "French", "Currency": "EUR"}', 'Attends local cultural events and art exhibitions.'),
(41, 'Experienced traveler with a preference for cozy accommodations.', '{"Language": "English", "Currency": "USD"}', 'Prefers comfortable and homey places to stay.'),
(42, 'German-speaking guest with an interest in historical landmarks.', '{"Language": "German", "Currency": "EUR"}', 'Visits historical sites and museums during trips.'),
(43, 'Travel enthusiast eager to explore new destinations!', '{"Language": "English", "Currency": "USD"}', 'Adventurous traveler with a passion for cultural experiences.'),
(44, 'A solo traveler looking for unique and cozy stays.', '{"Language": "Spanish", "Currency": "EUR"}', 'Experienced traveler with a love for trying local cuisines.');

-- Admins
INSERT INTO Admins (UserID, Username, Password, Role) VALUES
(45, 'admin1', 'admin1password', 'SuperAdmin'),
(46, 'admin2', 'admin2password', 'SuperAdmin'),
(47, 'admin3', 'admin3password', 'Moderator'),
(48, 'admin4', 'admin4password', 'Moderator'),
(49, 'admin5', 'admin5password', 'SuperAdmin'),
(50, 'admin6', 'admin6password', 'SuperAdmin'),
(51, 'admin7', 'admin7password', 'Moderator'),
(52, 'admin8', 'admin8password', 'Moderator'),
(53, 'admin9', 'admin9password', 'SuperAdmin'),
(54, 'admin10', 'admin10password', 'SuperAdmin'),
(55, 'admin11', 'admin11password', 'Moderator'),
(56, 'admin12', 'admin12password', 'Moderator'),
(57, 'admin13', 'admin13password', 'SuperAdmin'),
(58, 'admin14', 'admin14password', 'SuperAdmin'),
(59, 'admin15', 'admin15password', 'Moderator'),
(60, 'admin16', 'admin16password', 'Moderator'),
(61, 'admin17', 'admin17password', 'SuperAdmin'),
(62, 'admin18', 'admin18password', 'SuperAdmin'),
(63, 'admin19', 'admin19password', 'Moderator'),
(64, 'admin20', 'admin20password', 'Moderator'),
(65, 'admin21', 'admin21password', 'SuperAdmin'),
(66, 'admin22', 'admin22password', 'SuperAdmin');


-- PropertyLocation
INSERT INTO PropertyLocation (Address, Latitude, Longitude) VALUES
('123 Main St, City1, Country1', 34.052235, -118.243683),
('456 Elm St, City2, Country2', 40.712776, -74.005974),
('789 Oak St, City3, Country3', 51.507351, -0.127758),
('101 Pine St, City4, Country4', 52.520008, 13.404954),
('202 Maple St, City5, Country5', 48.858844, 2.294351),
('303 Birch St, City6, Country6', 41.891930, 12.511330),
('404 Cedar St, City7, Country7', 35.682839, 139.759455),
('505 Spruce St, City8, Country8', 22.396428, 114.109497),
('606 Fir St, City9, Country9', 25.276987, 51.518628),
('707 Redwood St, City10, Country10', 41.385063, 2.173404),
('808 Sequoia St, City11, Country11', 37.774929, -122.419416),
('909 Cedar St, City12, Country12', 52.379189, 4.899431),
('111 Oak St, City13, Country13', 48.135125, 11.581981),
('222 Birch St, City14, Country14', 55.755826, 37.617300),
('333 Elm St, City15, Country15', 45.421530, -75.694089),
('444 Pine St, City16, Country16', 35.689487, 139.691711),
('555 Maple St, City17, Country17', 40.712784, -74.006941),
('666 Redwood St, City18, Country18', 41.902782, 12.496366),
('777 Spruce St, City19, Country19', 34.052235, -118.243683),
('888 Fir St, City20, Country20', 25.761680, -80.191790),
('999 Cedar St, City21, Country21', 51.507351, -0.127758);

-- PropertyCategory
INSERT INTO PropertyCategory (Name) VALUES
('Apartment'),
('House'),
('Condo'),
('Villa'),
('Cabin'),
('Mansion'),
('Cottage'),
('Bungalow'),
('Chalet'),
('Townhouse'),
('Farmhouse'),
('Loft'),
('Treehouse'),
('Yurt'),
('Boat'),
('Castle'),
('Igloo'),
('Tent'),
('Ranch'),
('Cave'),
('Lighthouse'),
('Camper');

-- City
INSERT INTO City (Name, Country)
VALUES
('New York', 'United States'),
('Los Angeles', 'United States'),
('Paris', 'France'),
('London', 'United Kingdom'),
('Tokyo', 'Japan'),
('Sydney', 'Australia'),
('Rome', 'Italy'),
('Barcelona', 'Spain'),
('Berlin', 'Germany'),
('Amsterdam', 'Netherlands'),
('Cairo', 'Egypt'),
('Rio de Janeiro', 'Brazil'),
('Cape Town', 'South Africa'),
('Dubai', 'United Arab Emirates'),
('Toronto', 'Canada'),
('Mexico City', 'Mexico'),
('Moscow', 'Russia'),
('Singapore', 'Singapore'),
('Hong Kong', 'Hong Kong'),
('Mumbai', 'India'),
('Buenos Aires', 'Argentina'),
('Dublin', 'Ireland');


-- Property
INSERT INTO Property (HostID, Title, CategoryID, CityID, LocationID, Description, Price, NumberOfRooms, NumberOfBedrooms, NumberOfBathrooms, PropertySize)
VALUES
(1, 'Cozy Apartment in Downtown', 1, 1, 1, 'A comfortable apartment in the heart of the city.', 120.00, 2, 2, 2, 30.0),
(2, 'Luxury Villa with Ocean View', 2, 2, 2, 'An exquisite villa with breathtaking ocean views.', 350.00, 4, 3, 3, 200.0),
(3, 'Charming Studio in Montmartre', 3, 3, 3, 'A lovely studio in the artistic district of Montmartre.', 80.00, 1, 0, 1, 25.0),
(4, 'Spacious London Townhouse', 1, 4, 4, 'A roomy townhouse in the heart of London.', 220.00, 4, 2, 2, 100.0),
(5, 'Traditional Japanese Ryokan', 2, 5, 5, 'Experience Japanese culture in this traditional ryokan.', 150.00, 6, 3, 3, 150.0),
(6, 'Harbor-View Penthouse', 1, 6, 6, 'Enjoy the stunning harbor view from this penthouse.', 280.00, 2, 1, 1, 40.0),
(7, 'Stylish Apartment in Central Sydney', 3, 7, 7, 'A modern apartment in the heart of Sydney.', 130.00, 2, 1, 1, 50.0),
(8, 'Historic Villa in Tuscany', 2, 8, 8, 'A historic villa surrounded by vineyards in Tuscany.', 300.00, 5, 3, 2, 180.0),
(9, 'Beachfront Condo in Barcelona', 1, 9, 9, 'An elegant condo with direct beach access in Barcelona.', 190.00, 3, 2, 2, 80.0),
(10, 'Modern Loft in Berlin', 1, 10, 10, 'A stylish loft in the trendy neighborhoods of Berlin.', 110.00, 1, 0, 1, 35.0),
(11, 'Canal-Side House in Amsterdam', 3, 11, 11, 'A charming house with canal views in Amsterdam.', 160.00, 3, 2, 1, 75.0),
(12, 'Luxury Penthouse in Dubai', 2, 12, 12, 'Experience luxury in this modern penthouse in Dubai.', 400.00, 2, 2, 2, 90.0),
(13, 'Downtown Toronto Apartment', 1, 13, 13, 'A cozy apartment in the heart of downtown Toronto.', 90.00, 1, 0, 1, 28.0),
(14, 'Historic Mexico City Home', 2, 14, 14, 'A historic home with colonial charm in Mexico City.', 140.00, 3, 2, 2, 65.0),
(15, 'Modern Moscow Loft', 1, 15, 15, 'A modern loft in the center of Moscow.', 170.00, 2, 1, 1, 45.0),
(16, 'Skyline View in Singapore', 3, 16, 16, 'A stunning apartment with a view of the city skyline.', 200.00, 3, 2, 2, 60.0),
(17, 'Harborfront Apartment in Hong Kong', 1, 17, 17, 'An apartment with panoramic views of Hong Kong Harbor.', 230.00, 2, 1, 1, 55.0),
(18, 'Mumbai Beach House', 2, 18, 18, 'A beachfront house overlooking the Arabian Sea in Mumbai.', 260.00, 4, 3, 3, 120.0),
(19, 'Buenos Aires Loft', 1, 19, 19, 'A chic loft in the vibrant neighborhood of Buenos Aires.', 120.00, 1, 0, 1, 30.0),
(20, 'Dublin Townhouse', 3, 20, 20, 'A traditional townhouse in the heart of Dublin.', 180.00, 3, 2, 1, 70.0),
(21, 'Hawaiian Beachfront Villa', 2, 21, 21, 'A luxurious beachfront villa on the Hawaiian islands.', 320.00, 5, 4, 3, 220.0),
(22, 'Mountain Retreat in Swiss Alps', 1, 22, 21, 'A cozy retreat in the Swiss Alps with mountain views.', 280.00, 3, 2, 2, 85.0);

INSERT INTO Booking (GuestID, PropertyID, Check_in_Date, Check_out_Date)
VALUES
(1, 1, '2023-01-01', '2023-01-07'),
(2, 2, '2023-01-15', '2023-01-20'),
(3, 3, '2023-02-05', '2023-02-12'),
(4, 4, '2023-03-10', '2023-03-14'),
(5, 5, '2023-04-02', '2023-04-08'),
(6, 6, '2023-05-20', '2023-05-27'),
(7, 7, '2023-06-10', '2023-06-15'),
(8, 8, '2023-07-01', '2023-07-05'),
(9, 9, '2023-08-15', '2023-08-21'),
(10, 10, '2023-09-10', '2023-09-15'),
(11, 11, '2023-10-05', '2023-10-12'),
(12, 12, '2023-11-02', '2023-11-08'),
(13, 13, '2023-12-20', '2023-12-26'),
(14, 14, '2024-01-01', '2024-01-07'),
(15, 15, '2024-02-15', '2024-02-20'),
(16, 16, '2024-03-05', '2024-03-12'),
(17, 17, '2024-04-10', '2024-04-14'),
(18, 18, '2024-05-02', '2024-05-08'),
(19, 19, '2024-06-20', '2024-06-27'),
(20, 20, '2024-07-10', '2024-07-15'),
(21, 21, '2024-08-01', '2024-08-05'),
(22, 22, '2024-09-15', '2024-09-21');


-- HostBankingInfo
INSERT INTO HostBankingInfo (HostID, BankName, AccountHolderName, AccountNumber, RoutingNumber)
VALUES
(1, 'XYZ Bank', 'John Doe', '123456789', '987654321'),
(2, 'ABC Bank', 'Jane Smith', '987654321', '123456789'),
(3, 'PQR Bank', 'Robert Johnson', '567890123', '876543210'),
(4, 'LMN Bank', 'Emily Wilson', '345678901', '765432109'),
(5, 'DEF Bank', 'Michael Brown', '789012345', '654321098'),
(6, 'GHI Bank', 'Amanda Taylor', '234567890', '543210987'),
(7, 'JKL Bank', 'Daniel Harris', '890123456', '432109876'),
(8, 'MNO Bank', 'Sarah Lewis', '456789012', '321098765'),
(9, 'UVW Bank', 'Matthew Turner', '901234567', '210987654'),
(10, 'RST Bank', 'Olivia Hall', '567890123', '987654321'),
(11, 'CBA Bank', 'Ethan Clark', '345678901', '876543210'),
(12, 'BAC Bank', 'Sophia White', '123456789', '765432109'),
(13, 'KLM Bank', 'William Anderson', '456789012', '654321098'),
(14, 'PQS Bank', 'Isabella Walker', '789012345', '543210987'),
(15, 'NOP Bank', 'James Martinez', '234567890', '432109876'),
(16, 'XYZ Bank', 'Lily Rodriguez', '567890123', '321098765'),
(17, 'GHI Bank', 'Benjamin Young', '890123456', '210987654'),
(18, 'JKL Bank', 'Ava Moore', '901234567', '987654321'),
(19, 'DEF Bank', 'Logan Garcia', '345678901', '876543210'),
(20, 'ABC Bank', 'Grace Scott', '789012345', '765432109'),
(21, 'MNO Bank', 'Mason Hall', '234567890', '654321098'),
(22, 'BAC Bank', 'Harper Green', '456789012', '543210987');

INSERT INTO Payment_Method (PaymentMethodName)
VALUES
('Credit Card'),
('PayPal'),
('Debit Card'),
('Bank Transfer'),
('Apple Pay'),
('Google Pay'),
('Cash on Delivery'),
('Cryptocurrency'),
('Venmo'),
('Stripe');

		-- PaymentTransaction
INSERT INTO PaymentTransaction (TransactionID, GuestID, BookingID, Amount, PaymentMethodID, TransactionDate, PaymentProcedure, PaymentStatus) VALUES
(1, 1, 1, 75.00, 1, '2023-10-16', 'Successful', 'Paid'),
(2, 2, 2, 300.00, 1, '2023-11-06', 'Successful', 'Paid'),
(3, 3, 3, 48.00, 1, '2023-12-02', 'Successful', 'Paid'),
(4, 4, 4, 80.00, 1, '2023-10-26', 'Successful', 'Paid'),
(5, 5, 5, 150.00, 1, '2023-11-16', 'Successful', 'Paid'),
(6, 6, 6, 90.00, 1, '2023-12-11', 'Successful', 'Paid'),
(7, 7, 7, 350.00, 1, '2023-11-11', 'Successful', 'Paid'),
(8, 8, 8, 48.00, 1, '2023-10-21', 'Successful', 'Paid'),
(9, 9, 9, 70.00, 10, '2023-12-06', 'Successful', 'Paid'),
(10, 10, 10, 50.00, 2, '2023-10-30', 'Failed', 'Failed'),
(11, 11, 11, 136.00, 7, '2023-11-26', 'Successful', 'Paid'),
(12, 12, 12, 190.00, 1, '2023-12-21', 'Failed', 'Failed'),
(13, 13, 13, 60.00, 1, '2023-10-16', 'Failed', 'Failed'),
(14, 14, 14, 100.00, 1, '2023-11-11', 'Failed', 'Failed'),
(15, 15, 15, 36.00, 1, '2023-12-03', 'Failed', 'Failed'),
(16, 16, 16, 48.00, 10, '2023-10-26', 'Failed', 'Failed'),
(17, 17, 17, 64.00, 9, '2023-11-21', 'Failed', 'Failed'),
(18, 18, 18, 150.00, 6, '2023-12-11', 'Successful', 'Paid'),
(19, 19, 19, 60.00, 3, '2023-10-16', 'Successful', 'Paid'),
(20, 20, 20, 64.00, 5, '2023-11-06', 'Successful', 'Paid'),
(21, 21, 21, 84.00, 5, '2023-12-02', 'Successful', 'Paid'),
(22, 22, 22, 110.00, 2, '2023-10-27', 'Successful', 'Paid');


-- UserRating
INSERT INTO UserRating (UserRatingID, RatedUserID, RatedByUserID, Rating, Comment, Date)
VALUES
(1, 1, 2, 4.5, 'Great host!', '2023-10-01'),
(2, 1, 3, 3.0, 'Average experience', '2023-10-02'),
(3, 1, 4, 5.0, 'Exceptional stay!', '2023-10-03'),
(4, 1, 5, 4.0, 'Wonderful time', '2023-10-04'),
(5, 1, 6, 4.2, 'Nice guest', '2023-10-05'),
(6, 2, 1, 4.0, 'Good guest', '2023-10-06'),
(7, 2, 3, 5.0, 'Outstanding guest', '2023-10-07'),
(8, 2, 4, 3.5, 'Decent guest', '2023-10-08'),
(9, 2, 5, 4.7, 'Highly recommended', '2023-10-09'),
(10, 2, 6, 4.0, 'Great experience', '2023-10-10'),
(11, 3, 1, 3.2, 'Needs improvement', '2023-10-11'),
(12, 3, 2, 4.5, 'Highly recommended', '2023-10-12'),
(13, 3, 4, 3.0, 'Average stay', '2023-10-13'),
(14, 3, 5, 4.0, 'Pleasant guest', '2023-10-14'),
(15, 3, 6, 4.3, 'Enjoyable hosting', '2023-10-15'),
(16, 4, 1, 4.8, 'Exceptional guest', '2023-10-16'),
(17, 4, 2, 3.8, 'Good experience', '2023-10-17'),
(18, 4, 3, 4.2, 'Nice guest', '2023-10-18'),
(19, 4, 5, 3.5, 'Decent guest', '2023-10-19'),
(20, 4, 6, 4.0, 'Pleasant stay', '2023-10-20' );


-- Reviews
INSERT INTO Review (PropertyID, GuestID, Rating, Comment, Date)
VALUES
    (1, 1, 4.5, 'Great place to stay!', '2023-10-03'),
    (1, 2, 4.2, 'Enjoyed my time here.', '2023-10-04' ),
    (1, 3, 4.0, 'Nice property.', '2023-10-05'),
    (1, 4, 4.8, 'Highly recommended.', '2023-10-06'),
    (1, 5, 4.5, 'Beautiful location.', '2023-10-07'),
    (2, 1, 4.0, 'Decent place to stay.', '2023-10-08'),
    (2, 2, 4.3, 'Good experience.', '2023-10-09' ),
    (2, 3, 3.8, 'Okay property.', '2023-10-10'),
    (2, 4, 4.5, 'Enjoyable stay.', '2023-10-11'),
    (2, 5, 4.2, 'Nice view.', '2023-10-12'),
    (3, 1, 3.8, 'Could be better.', '2023-10-13'),
    (3, 2, 3.5, 'Average experience.', '2023-10-14'),
    (3, 3, 4.1, 'Great location.', '2023-10-15'),
    (3, 4, 3.7, 'Fair stay.', '2023-10-16'),
    (3, 5, 3.9, 'Nice staff.', '2023-10-17'),
    (4, 1, 4.2, 'Wonderful property.', '2023-10-18'),
    (4, 2, 4.5, 'Excellent experience.', '2023-10-19'),
    (4, 3, 4.3, 'Loved the place.', '2023-10-20'),
    (4, 4, 4.7, 'Highly satisfied.', '2023-10-21'),
    (4, 5, 4.4, 'Beautiful surroundings.', '2023-10-22');
    
		-- GuestArrival
INSERT INTO GuestArrival (BookingID, GuestID, HostID, ArrivalTime)
VALUES
(1, 1, 1, '2023-01-01 14:00:00'),
(2, 2, 2, '2023-01-15 15:30:00'),
(3, 3, 3, '2023-02-05 12:45:00'),
(4, 4, 4, '2023-03-10 16:20:00'),
(5, 5, 5, '2023-04-02 13:10:00'),
(6, 6, 6, '2023-05-20 14:40:00'),
(7, 7, 7, '2023-06-10 17:15:00'),
(8, 8, 8, '2023-07-01 19:30:00'),
(9, 9, 9, '2023-08-15 15:50:00'),
(10, 10, 10, '2023-09-10 18:25:00'),
(11, 11, 11, '2023-10-05 16:30:00'),
(12, 12, 12, '2023-11-02 12:40:00'),
(13, 13, 13, '2023-12-20 17:55:00'),
(14, 14, 14, '2024-01-01 14:15:00'),
(15, 15, 15, '2024-02-15 18:10:00'),
(16, 16, 16, '2024-03-05 15:45:00'),
(17, 17, 17, '2024-04-10 12:20:00'),
(18, 18, 18, '2024-05-02 14:30:00'),
(19, 19, 19, '2024-06-20 16:40:00'),
(20, 20, 20, '2024-07-10 13:55:00');


		-- PropertyPhotos
INSERT INTO PropertyPhotos (PropertyID, ImageData) VALUES
(1, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\PROP1.jpeg')),
(2, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\PROP2.jpeg')),
(3, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\PROP3.jpeg')),
(4, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\PROP4.jpeg')),
(5, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\PROP5.jpeg')),
(6, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\PROP6.jpeg')),
(7, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\PROP7.jpeg')),
(8, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\PROP8.jpeg')),
(9, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\PROP9.jpeg')),
(10, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\PROP10.jpeg')),
(11, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\PROP11.jpeg')),
(12, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\PROP12.jpeg')),
(13, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\PROP13.jpeg')),
(14, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\PROP14.jpeg')),
(15, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\PROP15.jpeg')),
(16, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\PROP16.jpeg')),
(17, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\PROP17.jpeg')),
(18, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\PROP18.jpeg')),
(19, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\PROP19.jpeg')),
(20, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\PROP20.jpeg')),
(21, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\PROP21.jpeg')),
(22, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\PROP22.jpeg')),
(1, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\PROP1_2.jpeg')),
(2, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\PROP2_2.jpeg')),
(3, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\PROP3_2.jpeg'));


		-- HostingRule
INSERT INTO HostingRule (RuleID, Name, Description) VALUES
(1, 'No Smoking', 'Smoking is not allowed in the property.'),
(2, 'Pets Allowed', 'Guests are welcome to bring their pets.'),
(3, 'Quiet Hours', 'Quiet hours are from 10 PM to 7 AM.'),
(4, 'No Parties', 'No parties or events are allowed.'),
(5, 'Check-in Time', 'Check-in is after 3 PM.'),
(6, 'Check-out Time', 'Check-out is before 11 AM.'),
(7, 'No Extra Guests', 'Only registered guests are allowed.'),
(8, 'Respect Neighbors', 'Please respect the neighbors and keep noise to a minimum.'),
(9, 'Recycle', 'Please recycle and dispose of waste properly.'),
(10, 'No Shoes Inside', 'No outdoor shoes allowed inside the property.'),
(11, 'Security Deposit', 'A security deposit may be required.'),
(12, 'Cleaning Fee', 'A cleaning fee may apply.'),
(13, 'Min Stay', 'Minimum stay of 2 nights.'),
(14, 'Max Guests', 'Maximum of 4 guests allowed.'),
(15, 'No Alcohol', 'Alcohol is not allowed on the property.'),
(16, 'Kitchen Access', 'Guests have access to the kitchen.'),
(17, 'No Cooking', 'Cooking is not allowed.'),
(18, 'Breakfast Included', 'Complimentary breakfast included.'),
(19, 'Shared Bathroom', 'Bathroom is shared with other guests.'),
(20, 'Private Bathroom', 'Each room has a private bathroom.'),
(21, 'Swimming Pool', 'Access to a shared swimming pool.');


		-- Property_has_HostingRule
INSERT INTO Property_has_HostingRule (Property_PropertyID, HostingRule_RuleID) VALUES
(1, 1),(1, 2),(2, 2),(2, 3),(3, 1),(4, 4),(4, 5),(5, 3),(6, 1),(7, 4),
(8, 2),(9, 3),(9, 6),(10, 7),(11, 5),(12, 8),(13, 9),(13, 10),(14, 11),
(15, 12),(16, 13),(17, 14),(18, 15);


		-- Promotions
INSERT INTO Promotions (PropertyID, Title, Description, Discount, Start_Date, End_Date) VALUES
(1, 'Summer Sale', 'Enjoy a discount on our cozy apartment this summer.', 0.15, '2023-06-01', '2023-08-31'),
(2, 'Ocean Villa Special', 'Special discount for our luxury ocean villa.', 0.2, '2023-05-15', '2023-06-15'),
(3, 'Montmartre Studio Deal', 'Limited-time offer for our charming Montmartre studio.', 0.1, '2023-07-10', '2023-07-30'),
(4, 'London Townhouse Promo', 'Promotion for our spacious London townhouse.', 0.15, '2023-06-20', '2023-07-20'),
(5, 'Japanese Ryokan Discount', 'Experience Japan with a discount at our traditional ryokan.', 0.2, '2023-09-01', '2023-09-30'),
(6, 'Harbor-View Special', 'Special offer for our stunning harbor-view penthouse.', 0.15, '2023-08-01', '2023-08-31'),
(7, 'Sydney Apartment Sale', 'Get a discount on our modern apartment in central Sydney.', 0.1, '2023-07-01', '2023-07-15'),
(8, 'Tuscany Villa Promo', 'Promotion for a stay at our historic villa in Tuscany.', 0.2, '2023-08-15', '2023-08-31'),
(9, 'Beachfront Condo Deal', 'Special discount for our elegant beachfront condo in Barcelona.', 0.15, '2023-08-01', '2023-08-15'),
(10, 'Berlin Loft Sale', 'Enjoy a discount on our stylish loft in Berlin.', 0.1, '2023-07-15', '2023-07-31'),
(11, 'Amsterdam House Special', 'Special offer for our charming house with canal views in Amsterdam.', 0.2, '2023-09-01', '2023-09-15'),
(12, 'Dubai Penthouse Promo', 'Promotion for a luxurious stay in our modern penthouse in Dubai.', 0.15, '2023-08-15', '2023-08-31'),
(13, 'Toronto Apartment Deal', 'Limited-time offer for a cozy apartment in downtown Toronto.', 0.1, '2023-07-01', '2023-07-15'),
(14, 'Mexico City Home Sale', 'Get a discount on a stay at our historic home in Mexico City.', 0.2, '2023-09-01', '2023-09-15'),
(15, 'Moscow Loft Special', 'Special offer for our modern loft in the center of Moscow.', 0.15, '2023-08-15', '2023-08-31'),
(16, 'Singapore Skyline Deal', 'Enjoy a discount on our stunning apartment with city skyline views.', 0.1, '2023-07-01', '2023-07-15'),
(17, 'Hong Kong Harborfront Promo', 'Promotion for an apartment with panoramic views of Hong Kong Harbor.', 0.2, '2023-09-01', '2023-09-15'),
(18, 'Mumbai Beach House Sale', 'Get a discount for a stay in our beachfront house overlooking the Arabian Sea.', 0.15, '2023-08-15', '2023-08-31'),
(19, 'Buenos Aires Loft Special', 'Special offer for a chic loft in the vibrant neighborhood of Buenos Aires.', 0.1, '2023-07-01', '2023-07-15'),
(20, 'Dublin Townhouse Deal', 'Promotion for a traditional townhouse in the heart of Dublin.', 0.2, '2023-09-01', '2023-09-15');

		-- Amenity
INSERT INTO Amenity (Name) VALUES
('Swimming Pool'),
('Free Parking'),
('Wi-Fi'),
('Gym'),
('Air Conditioning'),
('Heating'),
('Hot Tub'),
('Pet-Friendly'),
('Balcony'),
('Ocean View'),
('Mountain View'),
('Breakfast Included'),
('Cable TV'),
('Kitchenette'),
('Kid-Friendly'),
('Workspace'),
('Laundry Facilities'),
('Elevator'),
('Private Bathroom'),
('Fireplace'),
('Outdoor Grill');

--  PropertyAmenity 
INSERT INTO PropertyAmenity (PropertyID, AmenityID)
VALUES
  (1, 1),  -- Swimming Pool
  (1, 2),  -- Free Parking
  (2, 3),  -- Wi-Fi
  (2, 4),  -- Gym
  (3, 3),  -- Wi-Fi
  (3, 5),  -- Air Conditioning
  (4, 5),  -- Air Conditioning
  (4, 6),  -- Heating
  (5, 7),  -- Hot Tub
  (5, 8),  -- Pet-Friendly
  (6, 8),  -- Pet-Friendly
  (6, 9),  -- Balcony
  (7, 10), -- Ocean View
  (8, 11), -- Mountain View
  (9, 13), -- Breakfast Included
  (10, 14), -- Cable TV
  (10, 15), -- Kitchenette
  (11, 16), -- Kid-Friendly
  (12, 17), -- Workspace
  (13, 18), -- Laundry Facilities
  (14, 20), -- Fireplace
  (15, 21); -- Outdoor Grill


		-- UserFeedbackCategory
INSERT INTO UserFeedbackCategory ( Name) VALUES
('General Feedback'),
('Service Quality'),
('Communication'),
('Cleanliness'),
('Accuracy of Description'),
('Value for Money'),
('Location'),
('Amenities'),
('Check-in Process'),
('Check-out Process'),
('Host Communication'),
('Guest Communication'),
('Property Condition'),
('Safety and Security'),
('Others');

		--  UserFeedback
INSERT INTO UserFeedback (UserID, FeedbackCategoryID, Comment) VALUES
(1, 1, 'Great experience overall.'),
(2, 2, 'Excellent service quality.'),
(3, 3, 'Good communication with the host.'),
(4, 4, 'Property was clean and well-maintained.'),
(5, 5, 'Accurate property description.'),
(6, 6, 'Great value for money.'),
(7, 7, 'Excellent location.'),
(8, 8, 'Amenities were as described.'),
(9, 9, 'Smooth check-in process.'),
(10, 10, 'Easy check-out process.'),
(11, 11, 'Host communication was outstanding.'),
(12, 12, 'Guest communication was excellent.'),
(13, 13, 'Property was in good condition.'),
(14, 14, 'Felt safe and secure during the stay.'),
(15, 15, 'Overall a great experience.'),
(16, 1, 'Satisfactory experience.'),
(17, 2, 'Average service quality.'),
(18, 3, 'Host communication needs improvement.'),
(19, 4, 'Property could be cleaner.'),
(20, 5, 'Description was not very accurate.'),
(21, 6, 'Not the best value for money.'),
(22, 7, 'Location was inconvenient.'),
(23, 8, 'Amenities were lacking.'),
(24, 9, 'Check-in process needs improvement.');


		-- SocialNetwork
INSERT INTO SocialNetwork (Name) VALUES
('Facebook'),
('Twitter'),
('Instagram'),
('LinkedIn'),
('Pinterest'),
('Snapchat'),
('WhatsApp'),
('TikTok'),
('YouTube'),
('Reddit');

		-- UserSocialNetwork
INSERT INTO UserSocialNetwork (UserID, SocialNetworkID, Profile_Link) VALUES
(1, 1, 'https://www.facebook.com/user1'),
(2, 2, 'https://twitter.com/user2'),
(3, 3, 'https://www.instagram.com/user3'),
(4, 4, 'https://www.linkedin.com/user4'),
(5, 5, 'https://www.pinterest.com/user5'),
(6, 6, 'https://www.snapchat.com/user6'),
(7, 7, 'https://wa.me/user7'),
(8, 8, 'https://www.tiktok.com/@user8'),
(9, 9, 'https://www.youtube.com/user9'),
(10, 10, 'https://www.reddit.com/user10'),
(11, 1, 'https://www.facebook.com/user11'),
(12, 2, 'https://twitter.com/user12'),
(13, 3, 'https://www.instagram.com/user13'),
(14, 4, 'https://www.linkedin.com/user14'),
(15, 5, 'https://www.pinterest.com/user15'),
(16, 6, 'https://www.snapchat.com/user16'),
(17, 7, 'https://wa.me/user17'),
(18, 8, 'https://www.tiktok.com/@user18'),
(19, 9, 'https://www.youtube.com/user19'),
(20, 10, 'https://www.reddit.com/user20'),
(21, 1, 'https://www.facebook.com/user21'),
(22, 2, 'https://twitter.com/user22'),
(23, 3, 'https://www.instagram.com/user23'),
(24, 4, 'https://www.linkedin.com/user24'),
(25, 5, 'https://www.pinterest.com/user25');


		-- SavedProperty
INSERT INTO SavedProperty (GuestID, PropertyID) VALUES
(1, 1),(1, 2),(2, 3),(2, 4),(3, 5),(3, 6),
(4, 7),(4, 8),(5, 9),(5, 10),(6, 11),(6, 12),
(7, 13),(7, 14),(8, 15),(8, 16),(9, 17),(9, 18),
(10, 19),(10, 20),(11, 21),(11, 22);


		-- UserFavorite
INSERT INTO UserFavorite (UserID, PropertyID) VALUES
(1, 1),(1, 2),(2, 3),(2, 4),(3, 5),(3, 6),
(4, 7),(4, 8),(5, 9),(5, 10),(6, 11),(6, 12),
(7, 13),(7, 14),(8, 15),(8, 16),(9, 17),(9, 18),
(10, 19),(10, 20),(11, 21),(11, 22);



		-- Message
INSERT INTO Message (Content) VALUES
('Hello, how are you today?'),
('I have some questions about the property.'),
('Can you provide more details about the amenities?'),
('Is the property available for the dates I need?'),
('What is the check-in and check-out time?'),
('I''m interested in booking this property.'),
('How far is the property from the city center?'),
('Do you allow pets in the property?'),
('What''s the price for this property?'),
('Tell me more about the neighborhood.'),
('What''s the cancellation policy for this booking?'),
('Can you send more photos of the property?'),
('I need a late check-in, is it possible?'),
('What''s the Wi-Fi speed in the property?'),
('Is there a grocery store nearby?'),
('Are there any good restaurants in the area?'),
('Is parking available at the property?'),
('What''s the nearest public transportation?'),
('Are there any additional fees for the booking?'),
('Is the property suitable for families?'),
('Can you accommodate a group of six?'),
('Tell me about the property''s history.'),
('What''s the weather like in the area?'),
('What''s the distance to the nearest beach?'),
('How do I get to the property from the airport?'),
('Are there hiking trails nearby?'),
('What''s the closest tourist attraction?'),
('Is there a washer and dryer in the property?'),
('How do I contact the host for more information?'),
('What''s the minimum stay required for this property?');

		-- UserMessage
INSERT INTO UserMessage (SenderID, ReceiverID, MessageID) VALUES
(1, 2, 1),(2, 1, 2),(3, 1, 3),(4, 2, 4),(1, 3, 5),
(2, 3, 6),(3, 4, 7),(4, 3, 8),(1, 4, 9),(2, 4, 10),
(1, 5, 11),(2, 5, 12),(3, 5, 13),(4, 5, 14),(5, 1, 15),
(5, 2, 16),(5, 3, 17),(5, 4, 18),(1, 6, 19),(2, 6, 20),
(3, 6, 21),(4, 6, 22),(5, 6, 23),(6, 1, 24),(6, 2, 25),
(6, 3, 26),(6, 4, 27),(6, 5, 28),(1, 7, 29),(2, 7, 30);


		-- Notifications
INSERT INTO Notifications (UserID, Content) VALUES
(1, 'You have a new message.'),
(2, 'New booking request received.'),
(3, 'Your reservation is confirmed.'),
(4, 'Check out from your property today.'),
(5, 'New property listing available.'),
(6, 'Payment received for your hosting.'),
(7, 'Your review has been published.'),
(8, 'New user joined the platform.'),
(9, 'Upcoming trip reminder.'),
(10, 'Your property is highly rated.'),
(1, 'Important platform update.'),
(2, 'New property review posted.'),
(3, 'Payment processed successfully.'),
(4, 'Guest arrival scheduled today.'),
(5, 'Property verification pending.'),
(6, 'Congratulations on your first booking.'),
(7, 'New user message received.'),
(8, 'Host earnings for the month.'),
(9, 'Your favorite property is available.'),
(10, 'Payment request initiated.'),
(1, 'Profile update successful.'),
(2, 'Check-in instructions for your trip.');



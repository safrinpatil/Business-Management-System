-- DATA LOADING Stage
ALTER SESSION SET CURRENT_SCHEMA = PURPLE;

--1. service_category
-- TRUNCATE TABLE service_category;

INSERT INTO service_category(category_id, name) VALUES(seq_service_category_id.NEXTVAL, 'Education'); 
INSERT INTO service_category(category_id, name) VALUES(seq_service_category_id.NEXTVAL, 'Sports');
INSERT INTO service_category(category_id, name) VALUES(seq_service_category_id.NEXTVAL, 'Food');
INSERT INTO service_category(category_id, name) VALUES(seq_service_category_id.NEXTVAL, 'Entertainment');
INSERT INTO service_category(category_id, name) VALUES(seq_service_category_id.NEXTVAL, 'Healthcare');
INSERT INTO service_category(category_id, name) VALUES(seq_service_category_id.NEXTVAL, 'Technology');
INSERT INTO service_category(category_id, name) VALUES(seq_service_category_id.NEXTVAL, 'Travel');
INSERT INTO service_category(category_id, name) VALUES(seq_service_category_id.NEXTVAL, 'Fashion');
INSERT INTO service_category(category_id, name) VALUES(seq_service_category_id.NEXTVAL, 'Finance');
INSERT INTO service_category(category_id, name) VALUES(seq_service_category_id.NEXTVAL, 'Art');
INSERT INTO service_category(category_id, name) VALUES(seq_service_category_id.NEXTVAL, 'Automotive');
INSERT INTO service_category(category_id, name) VALUES(seq_service_category_id.NEXTVAL, 'Home & Garden');
INSERT INTO service_category(category_id, name) VALUES(seq_service_category_id.NEXTVAL, 'Pets');
INSERT INTO service_category(category_id, name) VALUES(seq_service_category_id.NEXTVAL, 'Beauty');
INSERT INTO service_category(category_id, name) VALUES(seq_service_category_id.NEXTVAL, 'Environment');
INSERT INTO service_category(category_id, name) VALUES(seq_service_category_id.NEXTVAL, 'Science');
INSERT INTO service_category(category_id, name) VALUES(seq_service_category_id.NEXTVAL, 'Music');
INSERT INTO service_category(category_id, name) VALUES(seq_service_category_id.NEXTVAL, 'Government');
INSERT INTO service_category(category_id, name) VALUES(seq_service_category_id.NEXTVAL, 'Religion');
INSERT INTO service_category(category_id, name) VALUES(seq_service_category_id.NEXTVAL, 'Others');


--SELECT * FROM service_category;

--2. services
-- TRUNCATE TABLE services;

INSERT INTO services(service_id, name, category_id) VALUES(seq_services_id.NEXTVAL, 'Swimming', 2);
INSERT INTO services(service_id, name, category_id) VALUES(seq_services_id.NEXTVAL, 'Fitness', 2);
INSERT INTO services(service_id, name, category_id) VALUES(seq_services_id.NEXTVAL, 'Mathematics', 1);
INSERT INTO services(service_id, name, category_id) VALUES(seq_services_id.NEXTVAL, 'English', 1);
INSERT INTO services(service_id, name, category_id) VALUES(seq_services_id.NEXTVAL, 'Judo', 2);
INSERT INTO services(service_id, name, category_id) VALUES(seq_services_id.NEXTVAL, 'Cooking', 4);
INSERT INTO services(service_id, name, category_id) VALUES(seq_services_id.NEXTVAL, 'Makeup', 3);
INSERT INTO services(service_id, name, category_id) VALUES(seq_services_id.NEXTVAL, 'DJ', 5);
INSERT INTO services(service_id, name, category_id) VALUES(seq_services_id.NEXTVAL, 'Music', 5);
INSERT INTO services(service_id, name, category_id) VALUES(seq_services_id.NEXTVAL, 'Dancing', 5);
INSERT INTO services(service_id, name, category_id) VALUES(seq_services_id.NEXTVAL, 'Gymnastics', 2);
INSERT INTO services(service_id, name, category_id) VALUES(seq_services_id.NEXTVAL, 'Ribbon Dance', 2);
INSERT INTO services(service_id, name, category_id) VALUES(seq_services_id.NEXTVAL, 'Soccer', 2);
INSERT INTO services(service_id, name, category_id) VALUES(seq_services_id.NEXTVAL, 'Yoga', 2);
INSERT INTO services(service_id, name, category_id) VALUES(seq_services_id.NEXTVAL, 'Karate', 2);
INSERT INTO services(service_id, name, category_id) VALUES(seq_services_id.NEXTVAL, 'Baking', 3);
INSERT INTO services(service_id, name, category_id) VALUES(seq_services_id.NEXTVAL, 'Hair Styling', 14);
INSERT INTO services(service_id, name, category_id) VALUES(seq_services_id.NEXTVAL, 'Photography', 10);
INSERT INTO services(service_id, name, category_id) VALUES(seq_services_id.NEXTVAL, 'Singing', 17);
INSERT INTO services(service_id, name, category_id) VALUES(seq_services_id.NEXTVAL, 'Painting', 10);
INSERT INTO services(service_id, name, category_id) VALUES(seq_services_id.NEXTVAL, 'Basketball', 2);
INSERT INTO services(service_id, name, category_id) VALUES(seq_services_id.NEXTVAL, 'Volleyball', 2);

--SELECT * FROM services;


--3. business
-- TRUNCATE TABLE business;

INSERT INTO business(business_id, name, street_address, county, city, state, contact, email_id) VALUES(seq_business_id.NEXTVAL, 'Watermelon Swim - Wesley Chapel', '30016 County Line Road', 'Hillsborough', 'Tampa', 'Florida', '8132297946', 'wesleychapel@watermelonswim.com');
INSERT INTO business(business_id, name, street_address, county, city, state, contact, email_id) VALUES(seq_business_id.NEXTVAL, 'Srishti Dance Academy - New Tampa', '10329 Cross Creek Blvd, Suite I', 'Hillsborough', 'Tampa', 'Florida', '2012535983', 'srishtidanceacademy@gmail.com');
INSERT INTO business(business_id, name, street_address, county, city, state, contact, email_id) VALUES(seq_business_id.NEXTVAL, 'Premier Gymnastics', '27033 State Rd 56, Wesley Chapel', 'Hillsborough', 'Tampa', 'Florida', '8139739920', 'info@premiergymnasticsfl.com');
INSERT INTO business(business_id, name, street_address, county, city, state, contact, email_id) VALUES(seq_business_id.NEXTVAL, 'Fitness First Gym', '123 Fitness Blvd', 'Hillsborough', 'Tampa', 'Florida', '8135556789', 'info@fitnessfirstgym.com');
INSERT INTO business(business_id, name, street_address, county, city, state, contact, email_id) VALUES(seq_business_id.NEXTVAL, 'Healthy Bites Cafe', '456 Nutritious St', 'Hillsborough', 'Tampa', 'Florida', '8139874321', 'info@healthybitescafe.com');
INSERT INTO business(business_id, name, street_address, county, city, state, contact, email_id) VALUES(seq_business_id.NEXTVAL, 'Sunset Yoga Studio', '789 Sunset Blvd', 'Hillsborough', 'Tampa', 'Florida', '8134567890', 'info@sunsetyogastudio.com');
INSERT INTO business(business_id, name, street_address, county, city, state, contact, email_id) VALUES(seq_business_id.NEXTVAL, 'Artistic Expressions Gallery', '101 Art Avenue', 'Hillsborough', 'Tampa', 'Florida', '8136543210', 'info@artisticexpressions.com');
INSERT INTO business(business_id, name, street_address, county, city, state, contact, email_id) VALUES(seq_business_id.NEXTVAL, 'Tech Innovators', '456 Tech Street', 'Hillsborough', 'Tampa', 'Florida', '8133334444', 'info@techinnovators.com');
INSERT INTO business(business_id, name, street_address, county, city, state, contact, email_id) VALUES(seq_business_id.NEXTVAL, 'Gourmet Delights Catering', '789 Gourmet Avenue', 'Hillsborough', 'Tampa', 'Florida', '8131112222', 'info@gourmetdelights.com');
INSERT INTO business(business_id, name, street_address, county, city, state, contact, email_id) VALUES(seq_business_id.NEXTVAL, 'Health and Wellness Center', '123 Wellness Way', 'Hillsborough', 'Tampa', 'Florida', '8138889999', 'info@healthandwellness.com');
INSERT INTO business(business_id, name, street_address, county, city, state, contact, email_id) VALUES(seq_business_id.NEXTVAL, 'Pet Paradise', '456 Pet Lane', 'Hillsborough', 'Tampa', 'Florida', '8137778888', 'info@petparadise.com');
INSERT INTO business(business_id, name, street_address, county, city, state, contact, email_id) VALUES(seq_business_id.NEXTVAL, 'The Green Thumb Garden Center', '789 Garden Road', 'Hillsborough', 'Tampa', 'Florida', '8131234567', 'info@greenthumbgardens.com');
INSERT INTO business(business_id, name, street_address, county, city, state, contact, email_id) VALUES(seq_business_id.NEXTVAL, 'Financial Wizards', '101 Finance Street', 'Hillsborough', 'Tampa', 'Florida', '8139991111', 'info@financialwizards.com');
INSERT INTO business(business_id, name, street_address, county, city, state, contact, email_id) VALUES(seq_business_id.NEXTVAL, 'Beauty Haven Salon', '456 Beauty Blvd', 'Hillsborough', 'Tampa', 'Florida', '8132223333', 'info@beautyhaven.com');
INSERT INTO business(business_id, name, street_address, county, city, state, contact, email_id) VALUES(seq_business_id.NEXTVAL, 'Green Earth Recycling', '789 Recycle Lane', 'Hillsborough', 'Tampa', 'Florida', '8137771111', 'info@greenearthrecycling.com');
INSERT INTO business(business_id, name, street_address, county, city, state, contact, email_id) VALUES(seq_business_id.NEXTVAL, 'Science Explorers', '123 Science Street', 'Hillsborough', 'Tampa', 'Florida', '8134445555', 'info@scienceexplorers.com');
INSERT INTO business(business_id, name, street_address, county, city, state, contact, email_id) VALUES(seq_business_id.NEXTVAL, 'Music Mania School', '456 Music Avenue', 'Hillsborough', 'Tampa', 'Florida', '8136667777', 'info@musicmania.com');
INSERT INTO business(business_id, name, street_address, county, city, state, contact, email_id) VALUES(seq_business_id.NEXTVAL, 'Tech Support Pros', '789 Tech Road', 'Hillsborough', 'Tampa', 'Florida', '8139994444', 'info@techsupportpros.com');
INSERT INTO business(business_id, name, street_address, county, city, state, contact, email_id) VALUES(seq_business_id.NEXTVAL, 'Creative Minds Art Studio', '101 Art Street', 'Hillsborough', 'Tampa', 'Florida', '8137773333', 'info@creativemindsart.com');
INSERT INTO business(business_id, name, street_address, county, city, state, contact, email_id) VALUES(seq_business_id.NEXTVAL, 'Eco-Friendly Living', '456 Eco Lane', 'Hillsborough', 'Tampa', 'Florida', '8131119999', 'info@ecofriendlyliving.com');
INSERT INTO business(business_id, name, street_address, county, city, state, contact, email_id) VALUES(seq_business_id.NEXTVAL, 'Healthy Habits Cafe', '789 Nutritious Blvd', 'Hillsborough', 'Tampa', 'Florida', '8135551234', 'info@healthyhabitscafe.com');
INSERT INTO business(business_id, name, street_address, county, city, state, contact, email_id) VALUES(seq_business_id.NEXTVAL, 'Sunshine Dance Studio', '101 Dance Avenue', 'Hillsborough', 'Tampa', 'Florida', '8137777777', 'info@sunshinedancestudio.com');
INSERT INTO business(business_id, name, street_address, county, city, state, contact, email_id) VALUES(seq_business_id.NEXTVAL, 'Tech Solutions Inc.', '456 Technology Street', 'Hillsborough', 'Tampa', 'Florida', '8138888888', 'info@techsolutionsinc.com');
INSERT INTO business(business_id, name, street_address, county, city, state, contact, email_id) VALUES(seq_business_id.NEXTVAL, 'Culinary Delights', '123 Culinary Lane', 'Hillsborough', 'Tampa', 'Florida', '8139999999', 'info@culinarydelights.com');
INSERT INTO business(business_id, name, street_address, county, city, state, contact, email_id) VALUES(seq_business_id.NEXTVAL, 'Holistic Health Center', '456 Holistic Road', 'Hillsborough', 'Tampa', 'Florida', '8131118888', 'info@holistichealthcenter.com');
INSERT INTO business(business_id, name, street_address, county, city, state, contact, email_id) VALUES(seq_business_id.NEXTVAL, 'Pet Paradise Grooming', '789 Pet Grooming Blvd', 'Hillsborough', 'Tampa', 'Florida', '8133332222', 'info@petparadisegrooming.com');
INSERT INTO business(business_id, name, street_address, county, city, state, contact, email_id) VALUES(seq_business_id.NEXTVAL, 'Green Thumb Plant Nursery', '101 Green Thumb Lane', 'Hillsborough', 'Tampa', 'Florida', '8137779999', 'info@greenthumbnursery.com');
INSERT INTO business(business_id, name, street_address, county, city, state, contact, email_id) VALUES(seq_business_id.NEXTVAL, 'Financial Freedom Consultants', '456 Finance Avenue', 'Hillsborough', 'Tampa', 'Florida', '8131113333', 'info@financialfreedom.com');
INSERT INTO business(business_id, name, street_address, county, city, state, contact, email_id) VALUES(seq_business_id.NEXTVAL, 'Beauty Bliss Salon', '789 Beauty Street', 'Hillsborough', 'Tampa', 'Florida', '8135551111', 'info@beautybliss.com');
INSERT INTO business(business_id, name, street_address, county, city, state, contact, email_id) VALUES(seq_business_id.NEXTVAL, 'Eco-Friendly Home Solutions', '123 Eco Avenue', 'Hillsborough', 'Tampa', 'Florida', '8134449999', 'info@ecofriendlyhomesolutions.com');
INSERT INTO business(business_id, name, street_address, county, city, state, contact, email_id) VALUES(seq_business_id.NEXTVAL, 'Young Scientists Club', '456 Science Road', 'Hillsborough', 'Tampa', 'Florida', '8138887777', 'info@youngscientistsclub.com');
INSERT INTO business(business_id, name, street_address, county, city, state, contact, email_id) VALUES(seq_business_id.NEXTVAL, 'Melody Music School', '789 Melody Lane', 'Hillsborough', 'Tampa', 'Florida', '8131239999', 'info@melodymusicschool.com');
INSERT INTO business(business_id, name, street_address, county, city, state, contact, email_id) VALUES(seq_business_id.NEXTVAL, 'Tech Masters', '101 Tech Avenue', 'Hillsborough', 'Tampa', 'Florida', '8137776666', 'info@techmasters.com');
INSERT INTO business(business_id, name, street_address, county, city, state, contact, email_id) VALUES(seq_business_id.NEXTVAL, 'Creative Kids Art Studio', '456 Kids Street', 'Hillsborough', 'Tampa', 'Florida', '8136669999', 'info@creativekidsart.com');
INSERT INTO business(business_id, name, street_address, county, city, state, contact, email_id) VALUES(seq_business_id.NEXTVAL, 'Green Living Eco Store', '789 Eco Avenue', 'Hillsborough', 'Tampa', 'Florida', '8133339999', 'info@greenlivingeco.com');

--SELECT * FROM business;

-- 4. service_levels
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Beginner', 'Beginner level', 1);
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Intermediate', 'Intermediate level', 1);
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Advanced', 'Advanced level', 1);
-- Service ID 2: Fitness
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Beginner Fitness', 'Basic fitness training for beginners', 2);
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Intermediate Fitness', 'Intermediate level fitness training', 2);
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Advanced Fitness', 'Advanced fitness training for experts', 2);
-- Service ID 3: Mathematics
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Elementary Math', 'Basic math concepts for elementary students', 3);
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Middle School Math', 'Mathematics for middle school students', 3);
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Advanced Math', 'Advanced math topics for high school students', 3);
-- Service ID 4: English
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'English Grammar Basics', 'Fundamentals of English grammar', 4);
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Intermediate English', 'Intermediate English language skills', 4);
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Advanced English Composition', 'Advanced English composition and writing', 4);
-- Service ID 5: Judo
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Judo Basics', 'Fundamentals of Judo techniques', 5);
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Intermediate Judo', 'Intermediate Judo skills and techniques', 5);
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Advanced Judo', 'Advanced Judo techniques and competition training', 5);
-- Service ID 6: Cooking
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Basic Cooking Skills', 'Basic cooking techniques for beginners', 6);
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Intermediate Culinary Arts', 'Intermediate culinary skills and recipes', 6);
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Advanced Gourmet Cooking', 'Advanced gourmet cooking techniques and cuisine', 6);
-- Service ID 7: Makeup
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Makeup Basics', 'Fundamentals of makeup application', 7);
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Intermediate Makeup Techniques', 'Intermediate makeup techniques and styles', 7);
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Advanced Special Effects Makeup', 'Advanced special effects makeup and theatrical techniques', 7);
-- Service ID 8: DJ
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'DJ Basics', 'Introduction to DJ equipment and mixing', 8);
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Intermediate DJ Skills', 'Intermediate DJing techniques and music selection', 8);
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Advanced DJ Performance', 'Advanced DJ performance and live mixing', 8);
-- Service ID 9: Music
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Music Fundamentals', 'Basic music theory and fundamentals', 9);
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Intermediate Music Lessons', 'Intermediate music lessons for various instruments', 9);
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Advanced Music Composition', 'Advanced music composition and songwriting', 9);
-- Service ID 10: Dancing
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Dance Basics', 'Fundamentals of dance styles and moves', 10);
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Intermediate Dance Styles', 'Intermediate dance styles and choreography', 10);
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Advanced Dance Performance', 'Advanced dance performance and routines', 10);
-- Service ID 11: Gymnastics
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Gymnastics Basics', 'Fundamental gymnastics skills and techniques', 11);
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Intermediate Gymnastics', 'Intermediate gymnastics routines and tumbling', 11);
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Advanced Gymnastics', 'Advanced gymnastics training and competition routines', 11);
-- Service ID 12: Ribbon Dance
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Ribbon Dance Fundamentals', 'Introduction to ribbon dance techniques', 12);
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Intermediate Ribbon Dance', 'Intermediate ribbon dance routines and choreography', 12);
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Advanced Ribbon Dance', 'Advanced ribbon dance performance and artistic routines', 12);
-- Service ID 13: Soccer
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Soccer Basics', 'Fundamentals of soccer skills and rules', 13);
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Intermediate Soccer Drills', 'Intermediate soccer training drills and techniques', 13);
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Advanced Soccer Strategies', 'Advanced soccer strategies, tactics, and game play', 13);
-- Service ID 14: Yoga
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Yoga for Beginners', 'Introduction to basic yoga poses and relaxation', 14);
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Intermediate Yoga Practice', 'Intermediate yoga poses and breathing techniques', 14);
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Advanced Yoga and Meditation', 'Advanced yoga postures and meditation practices', 14);
-- Service ID 15: Karate
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Karate Basics', 'Fundamental karate techniques and forms', 15);
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Intermediate Karate', 'Intermediate karate kata and sparring', 15);
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Advanced Karate', 'Advanced karate black belt training and self-defense', 15);
-- Service ID 16: Baking
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Baking Basics', 'Introduction to baking and pastry techniques', 16);
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Intermediate Baking', 'Intermediate baking skills and complex recipes', 16);
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Advanced Baking', 'Advanced pastry and dessert creation', 16);
-- Service ID 17: Hair Styling
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Basic Hair Styling', 'Basic hair styling techniques and tools', 17);
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Intermediate Hair Styling', 'Intermediate hair cutting and styling methods', 17);
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Advanced Hair Styling', 'Advanced hair coloring and salon styling', 17);
-- Service ID 18: Photography
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Photography Basics', 'Introduction to photography equipment and techniques', 18);
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Intermediate Photography', 'Intermediate photography composition and lighting', 18);
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Advanced Photography', 'Advanced photography editing and creative techniques', 18);
-- Service ID 19: Singing
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Singing Fundamentals', 'Fundamental singing techniques and vocal exercises', 19);
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Intermediate Singing', 'Intermediate vocal range expansion and song interpretation', 19);
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Advanced Singing', 'Advanced vocal performance and recording skills', 19);
-- Service ID 20: Painting
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Painting Basics', 'Introduction to painting materials and techniques', 20);
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Intermediate Painting', 'Intermediate painting styles and artistic expression', 20);
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Advanced Painting', 'Advanced painting composition and abstract art', 20);
-- Service ID 21: Basketball
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Basketball Basics', 'Fundamental basketball skills and drills', 21);
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Intermediate Basketball', 'Intermediate basketball strategy and team play', 21);
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Advanced Basketball', 'Advanced basketball tactics and competitive play', 21);
-- Service ID 22: Volleyball
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Volleyball Basics', 'Fundamental volleyball techniques and rules', 22);
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Intermediate Volleyball', 'Intermediate volleyball skills and team strategies', 22);
INSERT INTO service_levels(service_level_id, name, description, service_id) VALUES(seq_service_levels_id.NEXTVAL, 'Advanced Volleyball', 'Advanced volleyball game tactics and competitive play', 22);

--SELECT * FROM service_levels;

--SELECT * FROM business;

--REPORT
--select b.BUSINESS_ID , b.name,
--		s.service_id, s.name AS SERVICE_NAME, 
--		sl.service_level_id, sl.name AS SERVICE_LEVEL_NAME,
--		bs.name AS BUSINESS_SERVICE_NAME, bs.price AS RATE
--from services s , service_levels sl, business b , business_services bs
--where s.service_id = sl.service_id
--and bs.service_level_id = sl.service_level_id
--and bs.business_id = b.business_id
--order by b.business_id, s.service_id, sl.service_level_id

--4. business_services
-- TRUNCATE TABLE business_services;
-- DROP TABLE business_services CASCADE CONSTRAINTS;
-- DROP SEQUENCE seq_business_services_id;
-- CREATE SEQUENCE seq_business_services_id START WITH 1 INCREMENT BY 1;
-- ALTER TABLE business_services MODIFY business_services_id DEFAULT seq_business_services_id.NEXTVAL;

--SELECT * FROM business_services

-- Watermelon Swim - Wesley Chapel
INSERT INTO business_services(business_services_id, business_id, name, service_level_id, description, price) VALUES(seq_business_services_id.NEXTVAL, 1, 'Adult Swimming', 1, 'Begineer', 200.00); 
INSERT INTO business_services(business_services_id, business_id, name, service_level_id, description, price) VALUES(seq_business_services_id.NEXTVAL, 1, 'Adult Swimming', 2, 'Intermediate', 220.00);
INSERT INTO business_services(business_services_id, business_id, name, service_level_id, description, price) VALUES(seq_business_services_id.NEXTVAL, 1, 'Adult Swimming', 3, 'Advanced', 240.00);
INSERT INTO business_services(business_services_id, business_id, name, service_level_id, description, price) VALUES(seq_business_services_id.NEXTVAL, 1, 'Kids Swimming', 1, 'Begineer', 180.00);
INSERT INTO business_services(business_services_id, business_id, name, service_level_id, description, price) VALUES(seq_business_services_id.NEXTVAL, 1, 'Kids Swimming', 2, 'Intermediate', 200.00);
INSERT INTO business_services(business_services_id, business_id, name, service_level_id, description, price) VALUES(seq_business_services_id.NEXTVAL, 1, 'Kids Swimming', 3, 'Advanced', 240.00);
INSERT INTO business_services(business_services_id, business_id, name, service_level_id, description, price) VALUES(seq_business_services_id.NEXTVAL, 1, 'Adaptive Swimming', 1, 'Begineer', 200.00);
INSERT INTO business_services(business_services_id, business_id, name, service_level_id, description, price) VALUES(seq_business_services_id.NEXTVAL, 1, 'Adaptive Swimming', 2, 'Intermediate', 220.00);
INSERT INTO business_services(business_services_id, business_id, name, service_level_id, description, price) VALUES(seq_business_services_id.NEXTVAL, 1, 'Adaptive Swimming', 3, 'Advanced', 260.00);

-- Srishti Dance Academy - New Tampa
INSERT INTO business_services(business_services_id, business_id, name, service_level_id, description, price) VALUES(seq_business_services_id.NEXTVAL, 2, 'Kids Dancing', 28, 'Early Stars', 100);
INSERT INTO business_services(business_services_id, business_id, name, service_level_id, description, price) VALUES(seq_business_services_id.NEXTVAL, 2, 'Kids Dancing', 29, 'Twinkling Stars', 110);
INSERT INTO business_services(business_services_id, business_id, name, service_level_id, description, price) VALUES(seq_business_services_id.NEXTVAL, 2, 'Kids Dancing', 30, 'Bright Star', 120);
INSERT INTO business_services(business_services_id, business_id, name, service_level_id, description, price) VALUES(seq_business_services_id.NEXTVAL, 2, 'Teen Dancing', 28, 'School Early Stars', 120);
INSERT INTO business_services(business_services_id, business_id, name, service_level_id, description, price) VALUES(seq_business_services_id.NEXTVAL, 2, 'Teen Dancing', 29, 'School Twinkling Stars', 130);
INSERT INTO business_services(business_services_id, business_id, name, service_level_id, description, price) VALUES(seq_business_services_id.NEXTVAL, 2, 'Teen Dancing', 30, 'School Bright Stars', 150);
INSERT INTO business_services(business_services_id, business_id, name, service_level_id, description, price) VALUES(seq_business_services_id.NEXTVAL, 2, 'Adult Dancing', 28, 'Adult Early Stars', 120);
INSERT INTO business_services(business_services_id, business_id, name, service_level_id, description, price) VALUES(seq_business_services_id.NEXTVAL, 2, 'Adult Dancing', 29, 'Adult Twinkling Stars', 140);
INSERT INTO business_services(business_services_id, business_id, name, service_level_id, description, price) VALUES(seq_business_services_id.NEXTVAL, 2, 'Adult Dancing', 30, 'Adult Bright Stars', 160);
-- Premier Gymnastics
INSERT INTO business_services(business_services_id, business_id, name, service_level_id, description, price) VALUES(seq_business_services_id.NEXTVAL, 3, 'Gymnastics - Bronze', 31, 'Beginner', 250.00);
INSERT INTO business_services(business_services_id, business_id, name, service_level_id, description, price) VALUES(seq_business_services_id.NEXTVAL, 3, 'Gymnastics - Silver', 32, 'Intermediate', 270.00);
INSERT INTO business_services(business_services_id, business_id, name, service_level_id, description, price) VALUES(seq_business_services_id.NEXTVAL, 3, 'Gymnastics - Gold', 33, 'Expert', 290.00);
INSERT INTO business_services(business_services_id, business_id, name, service_level_id, description, price) VALUES(seq_business_services_id.NEXTVAL, 3, 'Ribbon Dance - Bronze', 34, 'Begineer', 260.00);
INSERT INTO business_services(business_services_id, business_id, name, service_level_id, description, price) VALUES(seq_business_services_id.NEXTVAL, 3, 'Ribbon Dance - Silver', 35, 'Intermediate', 280.00);
INSERT INTO business_services(business_services_id, business_id, name, service_level_id, description, price) VALUES(seq_business_services_id.NEXTVAL, 3, 'Ribbon Dance - Gold', 36, 'Expert', 300.00);

-- Fitness First Gym
INSERT INTO business_services(business_services_id, business_id, name, service_level_id, description, price) VALUES(seq_business_services_id.NEXTVAL, 4, 'Basic Fitness Training', 4, 'Beginner Fitness Training', 80.00);
INSERT INTO business_services(business_services_id, business_id, name, service_level_id, description, price) VALUES(seq_business_services_id.NEXTVAL, 4, 'Intermediate Fitness Training', 5, 'Intermediate Fitness Training', 100.00);

-- Sunset Yoga Studio
INSERT INTO business_services(business_services_id, business_id, name, service_level_id, description, price) VALUES(seq_business_services_id.NEXTVAL, 6, 'Yoga for Beginners', 40, 'Introduction to Yoga Poses', 80.00);
INSERT INTO business_services(business_services_id, business_id, name, service_level_id, description, price) VALUES(seq_business_services_id.NEXTVAL, 6, 'Intermediate Yoga Practice', 41, 'Intermediate Yoga Poses', 100.00);

-- Beauty Haven Salon
INSERT INTO business_services(business_services_id, business_id, name, service_level_id, description, price) VALUES(seq_business_services_id.NEXTVAL, 14, 'Hair Styling', 50, 'Basic Hair Styling', 40.00);
INSERT INTO business_services(business_services_id, business_id, name, service_level_id, description, price) VALUES(seq_business_services_id.NEXTVAL, 14, 'Hair Coloring', 51, 'Intermediate Hair Coloring', 60.00);

-- Music Mania School
INSERT INTO business_services(business_services_id, business_id, name, service_level_id, description, price) VALUES(seq_business_services_id.NEXTVAL, 17, 'Music Lessons', 55, 'Beginner Music Lessons', 30.00);
INSERT INTO business_services(business_services_id, business_id, name, service_level_id, description, price) VALUES(seq_business_services_id.NEXTVAL, 17, 'Instrument Rental', '', 'Instrument Rental Services', 20.00);

-- Creative Minds Art Studio
INSERT INTO business_services(business_services_id, business_id, name, service_level_id, description, price) VALUES(seq_business_services_id.NEXTVAL, 19, 'Art Classes for Kids', 54, 'Creative Art Classes for Children', 40.00);
INSERT INTO business_services(business_services_id, business_id, name, service_level_id, description, price) VALUES(seq_business_services_id.NEXTVAL, 19, 'Art Classes for Adults', 54, 'Creative Art Classes for Adults', 50.00);
-- Sunshine Dance Studio
INSERT INTO business_services(business_services_id, business_id, name, service_level_id, description, price) VALUES(seq_business_services_id.NEXTVAL, 22, 'Ballet Classes', 56, 'Ballet Dance Classes for All Ages', 60.00);
INSERT INTO business_services(business_services_id, business_id, name, service_level_id, description, price) VALUES(seq_business_services_id.NEXTVAL, 22, 'Contemporary Dance', 57, 'Contemporary Dance Workshops', 50.00);
-- Beauty Bliss Salon
INSERT INTO business_services(business_services_id, business_id, name, service_level_id, description, price) VALUES(seq_business_services_id.NEXTVAL, 29, 'Hair Styling', 49, 'Basic Hair Styling', 40.00);
INSERT INTO business_services(business_services_id, business_id, name, service_level_id, description, price) VALUES(seq_business_services_id.NEXTVAL, 29, 'Hair Coloring', 50, 'Intermediate Hair Coloring', 60.00);
-- Melody Music School ???
INSERT INTO business_services(business_services_id, business_id, name, service_level_id, description, price) VALUES(seq_business_services_id.NEXTVAL, 32, 'Music Lessons', 55, 'Beginner Music Lessons', 30.00);
INSERT INTO business_services(business_services_id, business_id, name, service_level_id, description, price) VALUES(seq_business_services_id.NEXTVAL, 32, 'Instrument Rental', '', 'Instrument Rental Services', 20.00);

-- Creative Kids Art Studio
INSERT INTO business_services(business_services_id, business_id, name, service_level_id, description, price) VALUES(seq_business_services_id.NEXTVAL, 34, 'Art Exploration for Kids', 54, 'Exploratory Art Classes for Children', 45.00);
INSERT INTO business_services(business_services_id, business_id, name, service_level_id, description, price) VALUES(seq_business_services_id.NEXTVAL, 34, 'Creative Art for Teens', 54, 'Creative Art Classes for Teens', 55.00);
-- Sunshine Dance Studio (Additional Services)
INSERT INTO business_services(business_services_id, business_id, name, service_level_id, description, price) VALUES(seq_business_services_id.NEXTVAL, 22, 'Hip-Hop Dance Classes', 58, 'Hip-Hop Dance Workshops', 70.00);
INSERT INTO business_services(business_services_id, business_id, name, service_level_id, description, price) VALUES(seq_business_services_id.NEXTVAL, 22, 'Salsa Dance Lessons', 59, 'Salsa Dance Classes', 65.00);
-- Beauty Bliss Salon (Additional Services)
INSERT INTO business_services(business_services_id, business_id, name, service_level_id, description, price) VALUES(seq_business_services_id.NEXTVAL, 29, 'Nail Art', 51, 'Nail Art and Manicure Services', 35.00);
INSERT INTO business_services(business_services_id, business_id, name, service_level_id, description, price) VALUES(seq_business_services_id.NEXTVAL, 29, 'Facial Treatments', 52, 'Facial Spa Treatments', 55.00);

-- Beauty Bliss Salon (Additional Services)
INSERT INTO business_services(business_services_id, business_id, name, service_level_id, description, price) VALUES(seq_business_services_id.NEXTVAL, 29, 'Hair Coloring', 53, 'Professional Hair Coloring', 65.00);
INSERT INTO business_services(business_services_id, business_id, name, service_level_id, description, price) VALUES(seq_business_services_id.NEXTVAL, 29, 'Makeup Workshops', 54, 'Makeup Workshops and Tutorials', 55.00);

-- **************************************************************************************** DONE *******************************************************************************************************

--5. employee_type
-- TRUNCATE TABLE employee_type;

INSERT INTO employee_type(employee_type_id, employee_type, description, is_fulltime, is_active) VALUES (seq_employee_type_id.NEXTVAL, 'Manager', 'Manages business operations', 'Y', 'Y');
INSERT INTO employee_type(employee_type_id, employee_type, description, is_fulltime, is_active) VALUES (seq_employee_type_id.NEXTVAL, 'Receptionist', 'Greets and assists customers', 'Y', 'Y');
INSERT INTO employee_type(employee_type_id, employee_type, description, is_fulltime, is_active) VALUES (seq_employee_type_id.NEXTVAL, 'House-keeping', 'Maintains cleanliness', 'Y', 'Y');
INSERT INTO employee_type(employee_type_id, employee_type, description, is_fulltime, is_active) VALUES (seq_employee_type_id.NEXTVAL, 'Instructor', 'Teaches specialized skills', 'Y', 'Y');

--SELECT * FROM EMPLOYEE_TYPE et ;

--6. employee
-- TRUNCATE TABLE employee;

--SELECT * FROM EMPLOYEE;

-- Manager 
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'John', 'Smith', 1, '123-456-7890', 5, 1, TO_DATE('2023-01-15', 'yyyy-mm-dd'), 'john.smith@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Emily', 'Johnson', 1, '987-654-3210', 7, 2, TO_DATE('2023-02-10', 'yyyy-mm-dd'), 'emily.johnson@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Michael', 'Williams', 1, '567-890-1234', 6, 3, TO_DATE('2023-03-05', 'yyyy-mm-dd'), 'michael.williams@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Sarah', 'Davis', 1, '789-012-3456', 8, 4, TO_DATE('2023-04-20', 'yyyy-mm-dd'), 'sarah.davis@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Robert', 'Brown', 1, '234-567-8901', 4, 5, TO_DATE('2023-05-12', 'yyyy-mm-dd'), 'robert.brown@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Jessica', 'Lee', 1, '345-678-9012', 6, 6, TO_DATE('2023-06-08', 'yyyy-mm-dd'), 'jessica.lee@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'David', 'Taylor', 1, '456-789-0123', 7, 7, TO_DATE('2023-07-14', 'yyyy-mm-dd'), 'david.taylor@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Amanda', 'Martin', 1, '567-890-1234', 5, 8, TO_DATE('2023-08-19', 'yyyy-mm-dd'), 'amanda.martin@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Daniel', 'Anderson', 1, '678-901-2345', 6, 9, TO_DATE('2023-09-25', 'yyyy-mm-dd'), 'daniel.anderson@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Olivia', 'Garcia', 1, '789-012-3456', 7, 10, TO_DATE('2023-10-30', 'yyyy-mm-dd'), 'olivia.garcia@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'William', 'Martinez', 1, '890-123-4567', 8, 11, TO_DATE('2023-11-05', 'yyyy-mm-dd'), 'william.martinez@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Sophia', 'Lopez', 1, '123-456-7890', 6, 12, TO_DATE('2023-12-10', 'yyyy-mm-dd'), 'sophia.lopez@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'James', 'Harris', 1, '234-567-8901', 7, 13, TO_DATE('2024-01-15', 'yyyy-mm-dd'), 'james.harris@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Mia', 'Clark', 1, '345-678-9012', 6, 14, TO_DATE('2024-02-20', 'yyyy-mm-dd'), 'mia.clark@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Ethan', 'Lewis', 1, '456-789-0123', 5, 15, TO_DATE('2024-03-25', 'yyyy-mm-dd'), 'ethan.lewis@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Ava', 'Young', 1, '567-890-1234', 4, 16, TO_DATE('2024-04-30', 'yyyy-mm-dd'), 'ava.young@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Noah', 'Walker', 1, '678-901-2345', 7, 17, TO_DATE('2024-05-05', 'yyyy-mm-dd'), 'noah.walker@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Isabella', 'Hall', 1, '789-012-3456', 8, 18, TO_DATE('2024-06-10', 'yyyy-mm-dd'), 'isabella.hall@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Liam', 'Allen', 1, '890-123-4567', 6, 19, TO_DATE('2024-07-15', 'yyyy-mm-dd'), 'liam.allen@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Oliver', 'White', 1, '123-456-7890', 7, 20, TO_DATE('2024-08-20', 'yyyy-mm-dd'), 'oliver.white@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Charlotte', 'Lewis', 1, '234-567-8901', 6, 21, TO_DATE('2024-09-25', 'yyyy-mm-dd'), 'charlotte.lewis@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Mason', 'Scott', 1, '345-678-9012', 7, 22, TO_DATE('2024-10-30', 'yyyy-mm-dd'), 'mason.scott@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Lucy', 'Johnson', 1, '456-789-0123', 8, 23, TO_DATE('2024-11-05', 'yyyy-mm-dd'), 'lucy.johnson@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Henry', 'Green', 1, '567-890-1234', 7, 24, TO_DATE('2024-12-10', 'yyyy-mm-dd'), 'henry.green@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Ella', 'Davis', 1, '678-901-2345', 6, 25, TO_DATE('2025-01-15', 'yyyy-mm-dd'), 'ella.davis@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Levi', 'Rodriguez', 1, '789-012-3456', 5, 26, TO_DATE('2025-02-20', 'yyyy-mm-dd'), 'levi.rodriguez@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Layla', 'Martinez', 1, '890-123-4567', 8, 27, TO_DATE('2025-03-25', 'yyyy-mm-dd'), 'layla.martinez@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Daniel', 'Clark', 1, '123-456-7890', 7, 28, TO_DATE('2025-04-30', 'yyyy-mm-dd'), 'daniel.clark@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Madison', 'Hall', 1, '234-567-8901', 6, 29, TO_DATE('2025-05-05', 'yyyy-mm-dd'), 'madison.hall@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Joseph', 'Allen', 1, '345-678-9012', 5, 30, TO_DATE('2025-06-10', 'yyyy-mm-dd'), 'joseph.allen@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Chloe', 'White', 1, '456-789-0123', 4, 31, TO_DATE('2025-07-15', 'yyyy-mm-dd'), 'chloe.white@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Sebastian', 'Scott', 1, '567-890-1234', 3, 32, TO_DATE('2025-08-20', 'yyyy-mm-dd'), 'sebastian.scott@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Zoe', 'Johnson', 1, '678-901-2345', 5, 33, TO_DATE('2025-09-25', 'yyyy-mm-dd'), 'zoe.johnson@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Henry', 'Green', 1, '789-012-3456', 6, 34, TO_DATE('2025-10-30', 'yyyy-mm-dd'), 'henry.green@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Ella', 'Davis', 1, '890-123-4567', 7, 35, TO_DATE('2025-11-05', 'yyyy-mm-dd'), 'ella.davis@example.com', 'Y');

-- Receptionist
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Emily', 'Wilson', 2, '123-456-7890', 3, 1, TO_DATE('2023-01-15', 'yyyy-mm-dd'), 'emily.wilson@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Michael', 'Johnson', 2, '987-654-3210', 2, 2, TO_DATE('2023-02-10', 'yyyy-mm-dd'), 'michael.johnson@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Sarah', 'Brown', 2, '567-890-1234', 4, 3, TO_DATE('2023-03-05', 'yyyy-mm-dd'), 'sarah.brown@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Robert', 'Davis', 2, '789-012-3456', 2, 4, TO_DATE('2023-04-20', 'yyyy-mm-dd'), 'robert.davis@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Jessica', 'Lee', 2, '234-567-8901', 3, 5, TO_DATE('2023-05-12', 'yyyy-mm-dd'), 'jessica.lee@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'David', 'Taylor', 2, '345-678-9012', 1, 6, TO_DATE('2023-06-08', 'yyyy-mm-dd'), 'david.taylor@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Amanda', 'Martin', 2, '456-789-0123', 2, 7, TO_DATE('2023-07-14', 'yyyy-mm-dd'), 'amanda.martin@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Daniel', 'Anderson', 2, '567-890-1234', 1, 8, TO_DATE('2023-08-19', 'yyyy-mm-dd'), 'daniel.anderson@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Olivia', 'Garcia', 2, '678-901-2345', 2, 9, TO_DATE('2023-09-25', 'yyyy-mm-dd'), 'olivia.garcia@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'William', 'Martinez', 2, '789-012-3456', 3, 10, TO_DATE('2023-10-30', 'yyyy-mm-dd'), 'william.martinez@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Sophia', 'Lopez', 2, '123-456-7890', 2, 11, TO_DATE('2023-11-05', 'yyyy-mm-dd'), 'sophia.lopez@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'James', 'Harris', 2, '234-567-8901', 1, 12, TO_DATE('2023-12-10', 'yyyy-mm-dd'), 'james.harris@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Mia', 'Clark', 2, '345-678-9012', 2, 13, TO_DATE('2024-01-15', 'yyyy-mm-dd'), 'mia.clark@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Ethan', 'Lewis', 2, '456-789-0123', 1, 14, TO_DATE('2024-02-20', 'yyyy-mm-dd'), 'ethan.lewis@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Ava', 'Young', 2, '567-890-1234', 3, 15, TO_DATE('2024-03-25', 'yyyy-mm-dd'), 'ava.young@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Noah', 'Walker', 2, '678-901-2345', 2, 16, TO_DATE('2024-04-30', 'yyyy-mm-dd'), 'noah.walker@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Isabella', 'Hall', 2, '789-012-3456', 3, 17, TO_DATE('2024-05-05', 'yyyy-mm-dd'), 'isabella.hall@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Liam', 'Allen', 2, '890-123-4567', 2, 18, TO_DATE('2024-06-10', 'yyyy-mm-dd'), 'liam.allen@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Oliver', 'White', 2, '123-456-7890', 1, 19, TO_DATE('2024-07-15', 'yyyy-mm-dd'), 'oliver.white@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Charlotte', 'Lewis', 2, '234-567-8901', 3, 20, TO_DATE('2024-08-20', 'yyyy-mm-dd'), 'charlotte.lewis@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Mason', 'Scott', 2, '345-678-9012', 2, 21, TO_DATE('2024-09-25', 'yyyy-mm-dd'), 'mason.scott@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Ella', 'Baker', 2, '456-789-0123', 1, 22, TO_DATE('2024-10-30', 'yyyy-mm-dd'), 'ella.baker@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Liam', 'Perez', 2, '567-890-1234', 2, 23, TO_DATE('2024-11-05', 'yyyy-mm-dd'), 'liam.perez@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Olivia', 'Turner', 2, '678-901-2345', 1, 24, TO_DATE('2024-12-10', 'yyyy-mm-dd'), 'olivia.turner@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'William', 'Adams', 2, '123-456-7890', 2, 25, TO_DATE('2025-01-15', 'yyyy-mm-dd'), 'william.adams@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Sophia', 'Wright', 2, '234-567-8901', 1, 26, TO_DATE('2025-02-20', 'yyyy-mm-dd'), 'sophia.wright@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'James', 'King', 2, '345-678-9012', 3, 27, TO_DATE('2025-03-25', 'yyyy-mm-dd'), 'james.king@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Mia', 'Lewis', 2, '456-789-0123', 2, 28, TO_DATE('2025-04-30', 'yyyy-mm-dd'), 'mia.lewis@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Ethan', 'Brown', 2, '567-890-1234', 1, 29, TO_DATE('2025-05-05', 'yyyy-mm-dd'), 'ethan.brown@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Ava', 'Clark', 2, '678-901-2345', 2, 30, TO_DATE('2025-06-10', 'yyyy-mm-dd'), 'ava.clark@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Noah', 'Hall', 2, '789-012-3456', 1, 31, TO_DATE('2025-07-15', 'yyyy-mm-dd'), 'noah.hall@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Isabella', 'Turner', 2, '890-123-4567', 3, 32, TO_DATE('2025-08-20', 'yyyy-mm-dd'), 'isabella.turner@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Liam', 'Adams', 2, '123-456-7890', 2, 33, TO_DATE('2025-09-25', 'yyyy-mm-dd'), 'liam.adams@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Oliver', 'Wright', 2, '234-567-8901', 1, 34, TO_DATE('2025-10-30', 'yyyy-mm-dd'), 'oliver.wright@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Charlotte', 'King', 2, '345-678-9012', 2, 35, TO_DATE('2025-11-05', 'yyyy-mm-dd'), 'charlotte.king@example.com', 'Y');

-- House-Keeping
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Sophia', 'Baker', 3, '456-789-0123', 4, 1, TO_DATE('2024-10-30', 'yyyy-mm-dd'), 'sophia.baker@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'James', 'Perez', 3, '567-890-1234', 5, 2, TO_DATE('2024-11-05', 'yyyy-mm-dd'), 'james.perez@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Mia', 'Turner', 3, '678-901-2345', 6, 3, TO_DATE('2024-12-10', 'yyyy-mm-dd'), 'mia.turner@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Ethan', 'Adams', 3, '123-456-7890', 4, 4, TO_DATE('2025-01-15', 'yyyy-mm-dd'), 'ethan.adams@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Ava', 'Wright', 3, '234-567-8901', 3, 5, TO_DATE('2025-02-20', 'yyyy-mm-dd'), 'ava.wright@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Noah', 'King', 3, '345-678-9012', 5, 6, TO_DATE('2025-03-25', 'yyyy-mm-dd'), 'noah.king@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Isabella', 'Lewis', 3, '456-789-0123', 4, 7, TO_DATE('2025-04-30', 'yyyy-mm-dd'), 'isabella.lewis@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Liam', 'Brown', 3, '567-890-1234', 3, 8, TO_DATE('2025-05-05', 'yyyy-mm-dd'), 'liam.brown@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Oliver', 'Clark', 3, '678-901-2345', 5, 9, TO_DATE('2025-06-10', 'yyyy-mm-dd'), 'oliver.clark@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Charlotte', 'Hall', 3, '789-012-3456', 4, 10, TO_DATE('2025-07-15', 'yyyy-mm-dd'), 'charlotte.hall@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Mason', 'Turner', 3, '890-123-4567', 3, 11, TO_DATE('2025-08-20', 'yyyy-mm-dd'), 'mason.turner@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Ella', 'Adams', 3, '123-456-7890', 5, 12, TO_DATE('2025-09-25', 'yyyy-mm-dd'), 'ella.adams@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Liam', 'Wright', 3, '234-567-8901', 4, 13, TO_DATE('2025-10-30', 'yyyy-mm-dd'), 'liam.wright@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Olivia', 'King', 3, '345-678-9012', 3, 14, TO_DATE('2025-11-05', 'yyyy-mm-dd'), 'olivia.king@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'William', 'Lewis', 3, '456-789-0123', 4, 15, TO_DATE('2025-12-10', 'yyyy-mm-dd'), 'william.lewis@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Sophia', 'Brown', 3, '567-890-1234', 5, 16, TO_DATE('2026-01-15', 'yyyy-mm-dd'), 'sophia.brown@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'James', 'Clark', 3, '678-901-2345', 6, 17, TO_DATE('2026-02-20', 'yyyy-mm-dd'), 'james.clark@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Mia', 'Adams', 3, '789-012-3456', 4, 18, TO_DATE('2026-03-25', 'yyyy-mm-dd'), 'mia.adams@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Ethan', 'Wright', 3, '890-123-4567', 5, 19, TO_DATE('2026-04-30', 'yyyy-mm-dd'), 'ethan.wright@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Ava', 'King', 3, '123-456-7890', 3, 20, TO_DATE('2026-05-05', 'yyyy-mm-dd'), 'ava.king@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Noah', 'Lewis', 3, '234-567-8901', 4, 21, TO_DATE('2026-06-10', 'yyyy-mm-dd'), 'noah.lewis@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Isabella', 'Brown', 3, '345-678-9012', 5, 22, TO_DATE('2026-07-15', 'yyyy-mm-dd'), 'isabella.brown@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Liam', 'Clark', 3, '456-789-0123', 6, 23, TO_DATE('2026-08-20', 'yyyy-mm-dd'), 'liam.clark@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Oliver', 'Adams', 3, '567-890-1234', 4, 24, TO_DATE('2026-09-25', 'yyyy-mm-dd'), 'oliver.adams@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Charlotte', 'Wright', 3, '678-901-2345', 5, 25, TO_DATE('2026-10-30', 'yyyy-mm-dd'), 'charlotte.wright@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Mason', 'King', 3, '789-012-3456', 3, 26, TO_DATE('2026-11-05', 'yyyy-mm-dd'), 'mason.king@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Ella', 'Lewis', 3, '890-123-4567', 4, 27, TO_DATE('2026-12-10', 'yyyy-mm-dd'), 'ella.lewis@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Liam', 'Brown', 3, '123-456-7890', 5, 28, TO_DATE('2027-01-15', 'yyyy-mm-dd'), 'liam.brown@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Olivia', 'Clark', 3, '234-567-8901', 6, 29, TO_DATE('2027-02-20', 'yyyy-mm-dd'), 'olivia.clark@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'William', 'Adams', 3, '345-678-9012', 4, 30, TO_DATE('2027-03-25', 'yyyy-mm-dd'), 'william.adams@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Emily', 'Martin', 3, '456-789-0123', 4, 31, TO_DATE('2027-04-30', 'yyyy-mm-dd'), 'emily.martin@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Michael', 'Johnson', 3, '567-890-1234', 5, 32, TO_DATE('2027-05-05', 'yyyy-mm-dd'), 'michael.johnson@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Sarah', 'Williams', 3, '678-901-2345', 6, 33, TO_DATE('2027-06-10', 'yyyy-mm-dd'), 'sarah.williams@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'David', 'Brown', 3, '789-012-3456', 4, 34, TO_DATE('2027-07-15', 'yyyy-mm-dd'), 'david.brown@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Jessica', 'Jones', 3, '890-123-4567', 5, 35, TO_DATE('2027-08-20', 'yyyy-mm-dd'), 'jessica.jones@example.com', 'Y');

-- Instructor
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Jessica', 'Jones', 4, '890-123-4567', 5, 1, TO_DATE('2027-08-20', 'yyyy-mm-dd'), 'jessica.jones@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Michael', 'Johnson', 4, '567-890-1234', 4, 2, TO_DATE('2027-05-05', 'yyyy-mm-dd'), 'michael.johnson@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'William', 'Brown', 4, '456-789-0123', 3, 3, TO_DATE('2027-04-30', 'yyyy-mm-dd'), 'william.brown@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'David', 'Jones', 4, '345-678-9012', 2, 4, TO_DATE('2027-03-25', 'yyyy-mm-dd'), 'david.jones@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Christopher', 'Williams', 4, '234-567-8901', 1, 5, TO_DATE('2027-02-20', 'yyyy-mm-dd'), 'christopher.williams@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Sarah', 'Davis', 4, '123-456-7890', 5, 6, TO_DATE('2027-01-15', 'yyyy-mm-dd'), 'sarah.davis@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Emily', 'Martin', 4, '567-890-1234', 4, 7, TO_DATE('2026-12-10', 'yyyy-mm-dd'), 'emily.martin@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Michael', 'Johnson', 4, '456-789-0123', 3, 8, TO_DATE('2026-11-05', 'yyyy-mm-dd'), 'michael.johnson@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'William', 'Brown', 4, '345-678-9012', 2, 9, TO_DATE('2026-10-30', 'yyyy-mm-dd'), 'william.brown@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'David', 'Jones', 4, '234-567-8901', 1, 10, TO_DATE('2026-09-25', 'yyyy-mm-dd'), 'david.jones@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Christopher', 'Williams', 4, '123-456-7890', 5, 11, TO_DATE('2026-08-20', 'yyyy-mm-dd'), 'christopher.williams@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Sarah', 'Davis', 4, '567-890-1234', 4, 12, TO_DATE('2026-07-15', 'yyyy-mm-dd'), 'sarah.davis@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Emily', 'Martin', 4, '456-789-0123', 3, 13, TO_DATE('2026-06-10', 'yyyy-mm-dd'), 'emily.martin@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Michael', 'Johnson', 4, '345-678-9012', 2, 14, TO_DATE('2026-05-05', 'yyyy-mm-dd'), 'michael.johnson@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'William', 'Brown', 4, '234-567-8901', 1, 15, TO_DATE('2026-04-30', 'yyyy-mm-dd'), 'william.brown@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'David', 'Jones', 4, '123-456-7890', 5, 16, TO_DATE('2026-03-25', 'yyyy-mm-dd'), 'david.jones@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Christopher', 'Williams', 4, '567-890-1234', 4, 17, TO_DATE('2026-03-25', 'yyyy-mm-dd'), 'chris.william@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Sarah', 'Davis', 4, '456-789-0123', 3, 18, TO_DATE('2026-02-20', 'yyyy-mm-dd'), 'sarah.davis@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Emily', 'Martin', 4, '345-678-9012', 2, 19, TO_DATE('2026-01-15', 'yyyy-mm-dd'), 'emily.martin@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Michael', 'Johnson', 4, '234-567-8901', 1, 20, TO_DATE('2025-12-10', 'yyyy-mm-dd'), 'michael.johnson@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'William', 'Brown', 4, '123-456-7890', 5, 21, TO_DATE('2025-11-05', 'yyyy-mm-dd'), 'william.brown@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'David', 'Jones', 4, '567-890-1234', 4, 22, TO_DATE('2025-10-30', 'yyyy-mm-dd'), 'david.jones@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Christopher', 'Williams', 4, '456-789-0123', 3, 23, TO_DATE('2025-09-25', 'yyyy-mm-dd'), 'christopher.williams@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Sarah', 'Davis', 4, '345-678-9012', 2, 24, TO_DATE('2025-08-20', 'yyyy-mm-dd'), 'sarah.davis@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Emily', 'Martin', 4, '234-567-8901', 1, 25, TO_DATE('2025-07-15', 'yyyy-mm-dd'), 'emily.martin@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Ella', 'Johnson', 4, '123-456-7890', 5, 26, TO_DATE('2023-01-15', 'yyyy-mm-dd'), 'ella.johnson@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Noah', 'Williams', 4, '987-654-3210', 6, 27, TO_DATE('2023-02-10', 'yyyy-mm-dd'), 'noah.williams@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Olivia', 'Davis', 4, '567-890-1234', 4, 28, TO_DATE('2023-03-05', 'yyyy-mm-dd'), 'olivia.davis@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Liam', 'Brown', 4, '789-012-3456', 3, 29, TO_DATE('2023-04-20', 'yyyy-mm-dd'), 'liam.brown@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Emma', 'Lee', 4, '234-567-8901', 6, 30, TO_DATE('2023-05-12', 'yyyy-mm-dd'), 'emma.lee@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Aiden', 'Taylor', 4, '345-678-9012', 5, 31, TO_DATE('2023-06-08', 'yyyy-mm-dd'), 'aiden.taylor@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Sophia', 'Martin', 4, '456-789-0123', 4, 32, TO_DATE('2023-07-14', 'yyyy-mm-dd'), 'sophia.martin@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Jackson', 'Anderson', 4, '567-890-1234', 5, 33, TO_DATE('2023-08-19', 'yyyy-mm-dd'), 'jackson.anderson@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Olivia', 'Garcia', 4, '678-901-2345', 4, 34, TO_DATE('2023-09-25', 'yyyy-mm-dd'), 'olivia.garcia@example.com', 'Y');
INSERT INTO employee(employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, date_of_hire, email_id, is_active) VALUES (seq_employee_id.NEXTVAL, 'Aiden', 'Martinez', 4, '789-012-3456', 5, 35, TO_DATE('2023-10-30', 'yyyy-mm-dd'), 'aiden.martinez@example.com', 'Y');

--8. customer
-- TRUNCATE TABLE customer;

SELECT * FROM customer;

INSERT INTO customer(customer_id, first_name, last_name, street_address, county, city, state, contact, email_id, source) VALUES(seq_customer_id.NEXTVAL, 'Emily', 'Williams', '789 Health St', 'Hillsborough', 'Tampa', 'Florida', '8135551234', 'emily@email.com', 'Walk-In');
INSERT INTO customer(customer_id, first_name, last_name, street_address, county, city, state, contact, email_id, source) VALUES(seq_customer_id.NEXTVAL, 'Samuel', 'Anderson', '567 Nutrition Dr', 'Hillsborough', 'Tampa', 'Florida', '8137778888', 'samuel@email.com', 'Online');
INSERT INTO customer(customer_id, first_name, last_name, street_address, county, city, state, contact, email_id, source) VALUES(seq_customer_id.NEXTVAL, 'Jennifer', 'Martinez', '333 Birch St', 'Hillsborough', 'Tampa', 'Florida', '8135557890', 'jennifer@email.com', 'Online');
INSERT INTO customer(customer_id, first_name, last_name, street_address, county, city, state, contact, email_id, source) VALUES(seq_customer_id.NEXTVAL, 'Richard', 'Lee', '444 Cedar St', 'Hillsborough', 'Tampa', 'Florida', '8135552345', 'richard@email.com', 'Walk-In');
INSERT INTO customer(customer_id, first_name, last_name, street_address, county, city, state, contact, email_id, source) VALUES(seq_customer_id.NEXTVAL, 'Susan', 'Garcia', '555 Spruce St', 'Hillsborough', 'Tampa', 'Florida', '8135556789', 'susan@email.com', 'Online');
INSERT INTO customer(customer_id, first_name, last_name, street_address, county, city, state, contact, email_id, source) VALUES(seq_customer_id.NEXTVAL, 'Robert', 'Rodriguez', '666 Pine St', 'Hillsborough', 'Tampa', 'Florida', '8135554321', 'robert@email.com', 'Walk-In');
INSERT INTO customer(customer_id, first_name, last_name, street_address, county, city, state, contact, email_id, source) VALUES(seq_customer_id.NEXTVAL, 'Patricia', 'Hernandez', '777 Oak St', 'Hillsborough', 'Tampa', 'Florida', '8135558765', 'patricia@email.com', 'Online');
INSERT INTO customer(customer_id, first_name, last_name, street_address, county, city, state, contact, email_id, source) VALUES(seq_customer_id.NEXTVAL, 'Karen', 'Martinez', '333 Elm St', 'Hillsborough', 'Tampa', 'Florida', '8135557891', 'karen@email.com', 'Online');
INSERT INTO customer(customer_id, first_name, last_name, street_address, county, city, state, contact, email_id, source) VALUES(seq_customer_id.NEXTVAL, 'Mark', 'Lee', '444 Oak St', 'Hillsborough', 'Tampa', 'Florida', '8135552346', 'mark@email.com', 'Walk-In');
INSERT INTO customer(customer_id, first_name, last_name, street_address, county, city, state, contact, email_id, source) VALUES(seq_customer_id.NEXTVAL, 'Cynthia', 'Garcia', '555 Pine St', 'Hillsborough', 'Tampa', 'Florida', '8135556790', 'cynthia@email.com', 'Online');
INSERT INTO customer(customer_id, first_name, last_name, street_address, county, city, state, contact, email_id, source) VALUES(seq_customer_id.NEXTVAL, 'Larry', 'Rodriguez', '666 Spruce St', 'Hillsborough', 'Tampa', 'Florida', '8135554322', 'larry@email.com', 'Walk-In');
INSERT INTO customer(customer_id, first_name, last_name, street_address, county, city, state, contact, email_id, source) VALUES(seq_customer_id.NEXTVAL, 'Laura', 'Hernandez', '777 Birch St', 'Hillsborough', 'Tampa', 'Florida', '8135558766', 'laura@email.com', 'Online');
INSERT INTO customer(customer_id, first_name, last_name, street_address, county, city, state, contact, email_id, source) VALUES(seq_customer_id.NEXTVAL, 'Anthony', 'Martinez', '888 Cedar St', 'Hillsborough', 'Tampa', 'Florida', '8135557892', 'anthony@email.com', 'Walk-In');
INSERT INTO customer(customer_id, first_name, last_name, street_address, county, city, state, contact, email_id, source) VALUES(seq_customer_id.NEXTVAL, 'Pamela', 'Lee', '999 Maple St', 'Hillsborough', 'Tampa', 'Florida', '8135552347', 'pamela@email.com', 'Online');
INSERT INTO customer(customer_id, first_name, last_name, street_address, county, city, state, contact, email_id, source) VALUES(seq_customer_id.NEXTVAL, 'Daniel', 'Gonzalez', '111 Oak St', 'Hillsborough', 'Tampa', 'Florida', '8135554323', 'daniel@email.com', 'Walk-In');
INSERT INTO customer(customer_id, first_name, last_name, street_address, county, city, state, contact, email_id, source) VALUES(seq_customer_id.NEXTVAL, 'Susan', 'Smith', '222 Elm St', 'Hillsborough', 'Tampa', 'Florida', '8135558767', 'susan@email.com', 'Online');
INSERT INTO customer(customer_id, first_name, last_name, street_address, county, city, state, contact, email_id, source) VALUES(seq_customer_id.NEXTVAL, 'Richard', 'Johnson', '333 Pine St', 'Hillsborough', 'Tampa', 'Florida', '8135557893', 'richard@email.com', 'Walk-In');
INSERT INTO customer(customer_id, first_name, last_name, street_address, county, city, state, contact, email_id, source) VALUES(seq_customer_id.NEXTVAL, 'Betty', 'Harris', '444 Cedar St', 'Hillsborough', 'Tampa', 'Florida', '8135552348', 'betty@email.com', 'Online');
INSERT INTO customer(customer_id, first_name, last_name, street_address, county, city, state, contact, email_id, source) VALUES(seq_customer_id.NEXTVAL, 'Matthew', 'Davis', '555 Spruce St', 'Hillsborough', 'Tampa', 'Florida', '8135554324', 'matthew@email.com', 'Walk-In');
INSERT INTO customer(customer_id, first_name, last_name, street_address, county, city, state, contact, email_id, source) VALUES(seq_customer_id.NEXTVAL, 'Nancy', 'Wilson', '666 Maple St', 'Hillsborough', 'Tampa', 'Florida', '8135558768', 'nancy@email.com', 'Online');
INSERT INTO customer(customer_id, first_name, last_name, street_address, county, city, state, contact, email_id, source) VALUES(seq_customer_id.NEXTVAL, 'William', 'Martinez', '777 Birch St', 'Hillsborough', 'Tampa', 'Florida', '8135557894', 'william@email.com', 'Walk-In');
INSERT INTO customer(customer_id, first_name, last_name, street_address, county, city, state, contact, email_id, source) VALUES(seq_customer_id.NEXTVAL, 'Deborah', 'Jones', '888 Cedar St', 'Hillsborough', 'Tampa', 'Florida', '8135552349', 'deborah@email.com', 'Online');
INSERT INTO customer(customer_id, first_name, last_name, street_address, county, city, state, contact, email_id, source) VALUES(seq_customer_id.NEXTVAL, 'Eric', 'Miller', '999 Oak St', 'Hillsborough', 'Tampa', 'Florida', '8135558769', 'eric@email.com', 'Walk-In');
INSERT INTO customer(customer_id, first_name, last_name, street_address, county, city, state, contact, email_id, source) VALUES(seq_customer_id.NEXTVAL, 'Sharon', 'Wilson', '111 Elm St', 'Hillsborough', 'Tampa', 'Florida', '8135557895', 'sharon@email.com', 'Online');
INSERT INTO customer(customer_id, first_name, last_name, street_address, county, city, state, contact, email_id, source) VALUES(seq_customer_id.NEXTVAL, 'Thomas', 'Garcia', '222 Cedar St', 'Hillsborough', 'Tampa', 'Florida', '8135552350', 'thomas@email.com', 'Walk-In');
INSERT INTO customer(customer_id, first_name, last_name, street_address, county, city, state, contact, email_id, source) VALUES(seq_customer_id.NEXTVAL, 'Linda', 'Davis', '333 Pine St', 'Hillsborough', 'Tampa', 'Florida', '8135558770', 'linda@email.com', 'Online');
INSERT INTO customer(customer_id, first_name, last_name, street_address, county, city, state, contact, email_id, source) VALUES(seq_customer_id.NEXTVAL, 'Christopher', 'Taylor', '444 Birch St', 'Hillsborough', 'Tampa', 'Florida', '8135557896', 'christopher@email.com', 'Walk-In');
INSERT INTO customer(customer_id, first_name, last_name, street_address, county, city, state, contact, email_id, source) VALUES(seq_customer_id.NEXTVAL, 'Margaret', 'Brown', '555 Elm St', 'Hillsborough', 'Tampa', 'Florida', '8135552351', 'margaret@email.com', 'Online');
INSERT INTO customer(customer_id, first_name, last_name, street_address, county, city, state, contact, email_id, source) VALUES(seq_customer_id.NEXTVAL, 'Steven', 'Hernandez', '666 Oak St', 'Hillsborough', 'Tampa', 'Florida', '8135558771', 'steven@email.com', 'Walk-In');
INSERT INTO customer(customer_id, first_name, last_name, street_address, county, city, state, contact, email_id, source) VALUES(seq_customer_id.NEXTVAL, 'Donna', 'White', '777 Pine St', 'Hillsborough', 'Tampa', 'Florida', '8135557897', 'donna@email.com', 'Online');
INSERT INTO customer(customer_id, first_name, last_name, street_address, county, city, state, contact, email_id, source) VALUES(seq_customer_id.NEXTVAL, 'Kenneth', 'Clark', '888 Oak St', 'Hillsborough', 'Tampa', 'Florida', '8135558772', 'kenneth@email.com', 'Walk-In');
INSERT INTO customer(customer_id, first_name, last_name, street_address, county, city, state, contact, email_id, source) VALUES(seq_customer_id.NEXTVAL, 'Carol', 'Martin', '999 Elm St', 'Hillsborough', 'Tampa', 'Florida', '8135557898', 'carol@email.com', 'Online');
INSERT INTO customer(customer_id, first_name, last_name, street_address, county, city, state, contact, email_id, source) VALUES(seq_customer_id.NEXTVAL, 'Paul', 'Harris', '111 Pine St', 'Hillsborough', 'Tampa', 'Florida', '8135552352', 'paul@email.com', 'Walk-In');
INSERT INTO customer(customer_id, first_name, last_name, street_address, county, city, state, contact, email_id, source) VALUES(seq_customer_id.NEXTVAL, 'Ruth', 'Davis', '222 Birch St', 'Hillsborough', 'Tampa', 'Florida', '8135558773', 'ruth@email.com', 'Online');
INSERT INTO customer(customer_id, first_name, last_name, street_address, county, city, state, contact, email_id, source) VALUES(seq_customer_id.NEXTVAL, 'Kevin', 'Hernandez', '333 Oak St', 'Hillsborough', 'Tampa', 'Florida', '8135557899', 'kevin@email.com', 'Walk-In');
INSERT INTO customer(customer_id, first_name, last_name, street_address, county, city, state, contact, email_id, source) VALUES(seq_customer_id.NEXTVAL, 'Debra', 'Smith', '444 Elm St', 'Hillsborough', 'Tampa', 'Florida', '8135552353', 'debra@email.com', 'Online');
INSERT INTO customer(customer_id, first_name, last_name, street_address, county, city, state, contact, email_id, source) VALUES(seq_customer_id.NEXTVAL, 'Brian', 'Johnson', '555 Pine St', 'Hillsborough', 'Tampa', 'Florida', '8135558774', 'brian@email.com', 'Walk-In');
INSERT INTO customer(customer_id, first_name, last_name, street_address, county, city, state, contact, email_id, source) VALUES(seq_customer_id.NEXTVAL, 'Karen', 'Williams', '666 Cedar St', 'Hillsborough', 'Tampa', 'Florida', '8135552354', 'karen@email.com', 'Online');
INSERT INTO customer(customer_id, first_name, last_name, street_address, county, city, state, contact, email_id, source) VALUES(seq_customer_id.NEXTVAL, 'Edward', 'Davis', '777 Spruce St', 'Hillsborough', 'Tampa', 'Florida', '8135558775', 'edward@email.com', 'Walk-In');
INSERT INTO customer(customer_id, first_name, last_name, street_address, county, city, state, contact, email_id, source) VALUES(seq_customer_id.NEXTVAL, 'Lisa', 'Rodriguez', '888 Maple St', 'Hillsborough', 'Tampa', 'Florida', '8135552355', 'lisa@email.com', 'Online');
INSERT INTO customer(customer_id, first_name, last_name, street_address, county, city, state, contact, email_id, source) VALUES(seq_customer_id.NEXTVAL, 'Thomas', 'Anderson', '999 Oak St', 'Hillsborough', 'Tampa', 'Florida', '8135558776', 'thomas@email.com', 'Walk-In');
INSERT INTO customer(customer_id, first_name, last_name, street_address, county, city, state, contact, email_id, source) VALUES(seq_customer_id.NEXTVAL, 'Donna', 'Wilson', '111 Elm St', 'Hillsborough', 'Tampa', 'Florida', '8135552356', 'donna@email.com', 'Online');
INSERT INTO customer(customer_id, first_name, last_name, street_address, county, city, state, contact, email_id, source) VALUES(seq_customer_id.NEXTVAL, 'Christopher', 'Harris', '222 Pine St', 'Hillsborough', 'Tampa', 'Florida', '8135558777', 'christopher@email.com', 'Walk-In');
INSERT INTO customer(customer_id, first_name, last_name, street_address, county, city, state, contact, email_id, source) VALUES(seq_customer_id.NEXTVAL, 'Margaret', 'Smith', '333 Cedar St', 'Hillsborough', 'Tampa', 'Florida', '8135552357', 'margaret@email.com', 'Online');
INSERT INTO customer(customer_id, first_name, last_name, street_address, county, city, state, contact, email_id, source) VALUES(seq_customer_id.NEXTVAL, 'Joseph', 'Gonzalez', '444 Birch St', 'Hillsborough', 'Tampa', 'Florida', '8135558778', 'joseph@email.com', 'Walk-In');
INSERT INTO customer(customer_id, first_name, last_name, street_address, county, city, state, contact, email_id, source) VALUES(seq_customer_id.NEXTVAL, 'Dorothy', 'Martin', '555 Elm St', 'Hillsborough', 'Tampa', 'Florida', '8135552358', 'dorothy@email.com', 'Online');


--7. batches
-- TRUNCATE TABLE batches;

CREATE TABLE TEMP_BATCHES AS SELECT * FROM BATCHES WHERE 1=2;

ALTER TABLE TEMP_BATCHES MODIFY START_DATE VARCHAR2(20);
ALTER TABLE TEMP_BATCHES MODIFY END_DATE VARCHAR2(20);


CREATE SEQUENCE seq_temp_batches_id START WITH 1 INCREMENT BY 1;


INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Adult Swimming - Beginner Batch 1', 25, 	   SYSDATE, SYSDATE+90, 1, 106);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Adult Swimming - Intermediate Batch 1', 20, SYSDATE, SYSDATE+90, 2, 106);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Adult Swimming - Advanced Batch 1', 18,     SYSDATE, SYSDATE+90, 3, 106);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Kids Swimming - Beginner Batch 1', 22,     SYSDATE, SYSDATE+90, 4, 106);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Kids Swimming - Intermediate Batch 1', 20, SYSDATE, SYSDATE+90, 5, 106);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Kids Swimming - Advanced Batch 1', 18,     SYSDATE, SYSDATE+90, 6, 106);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Adaptive Swimming - Beginner Batch 1', 20, SYSDATE, SYSDATE+90, 7, 106);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Adaptive Swimming - Intermediate Batch 1', 18, SYSDATE, SYSDATE+90, 8, 106);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Adaptive Swimming - Advanced Batch 1', 16,     SYSDATE, SYSDATE+90, 9, 106);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Dance Basics - Kids Dancing Batch 1', 15, SYSDATE-20, '2023-12-20', 10, 107);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Dance Basics - Kids Dancing Batch 2', 14, SYSDATE-20, '2023-12-20', 10, 107);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Dance Basics - Kids Dancing Batch 3', 16, SYSDATE-20, '2023-12-20', 10, 107);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Dance Styles - Teen Dancing Batch 1', 18, '2023-11-01', '2024-01-01', 11, 107);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Dance Styles - Teen Dancing Batch 2', 17, '2023-11-01', '2024-01-01', 11, 107);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Dance Styles - Teen Dancing Batch 3', 15, '2023-11-01', '2024-01-01', 11, 107);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Advanced Dance Performance - Teen Dancing Batch 1', 16, '2023-11-15', '2024-01-15', 12, 107);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Advanced Dance Performance - Teen Dancing Batch 2', 15, '2023-11-15', '2024-01-15', 12, 107);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Advanced Dance Performance - Teen Dancing Batch 3', 17, '2023-11-15', '2024-01-15', 12, 107);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Dance Basics - Adult Dancing Batch 1', 20, '2023-10-25', '2023-12-25', 13, 107);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Dance Basics - Adult Dancing Batch 2', 22, '2023-10-25', '2023-12-25', 13, 107);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Dance Basics - Adult Dancing Batch 3', 18, '2023-10-25', '2023-12-25', 13, 107);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Dance Styles - Adult Dancing Batch 1', 15, '2023-11-05', '2024-01-05', 14, 107);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Dance Styles - Adult Dancing Batch 2', 16, '2023-11-05', '2024-01-05', 14, 107);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Dance Styles - Adult Dancing Batch 3', 17, '2023-11-05', '2024-01-05', 14, 107);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Gymnastics Basics - Gymnastics - Bronze Batch 1', 12, '2023-09-15', '2024-01-15', 19, 108);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Gymnastics Basics - Gymnastics - Bronze Batch 2', 14, '2023-09-15', '2024-01-15', 19, 108);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Gymnastics Basics - Gymnastics - Bronze Batch 3', 13, '2023-09-15', '2024-01-15', 19, 108);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Gymnastics - Gymnastics - Silver Batch 1', 11, '2023-10-05', '2024-02-05', 20, 108);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Gymnastics - Gymnastics - Silver Batch 2', 10, '2023-10-05', '2024-02-05', 20, 108);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Gymnastics - Gymnastics - Silver Batch 3', 12, '2023-10-05', '2024-02-05', 20, 108);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Advanced Gymnastics - Gymnastics - Gold Batch 1', 10, '2023-11-10', '2024-03-10', 21, 108);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Advanced Gymnastics - Gymnastics - Gold Batch 2', 9, '2023-11-10', '2024-03-10', 21, 108);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Advanced Gymnastics - Gymnastics - Gold Batch 3', 11, '2023-11-10', '2024-03-10', 21, 108);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Beginner Fitness - Basic Fitness Training Batch 1', 15, '2023-08-20', '2024-02-20', 25, 109);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Beginner Fitness - Basic Fitness Training Batch 2', 18, '2023-08-20', '2024-02-20', 25, 109);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Beginner Fitness - Basic Fitness Training Batch 3', 20, '2023-08-20', '2024-02-20', 25, 109);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Fitness - Intermediate Fitness Training Batch 1', 12, '2023-09-05', '2024-03-05', 26, 109);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Fitness - Intermediate Fitness Training Batch 2', 14, '2023-09-05', '2024-03-05', 26, 109);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Fitness - Intermediate Fitness Training Batch 3', 16, '2023-09-05', '2024-03-05', 26, 109);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Yoga for Beginners Batch 1', 10, '2023-09-10', '2024-03-10', 27, 111);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Yoga for Beginners Batch 2', 12, '2023-09-10', '2024-03-10', 27, 111);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Yoga for Beginners Batch 3', 15, '2023-09-10', '2024-03-10', 27, 111);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Yoga Practice Batch 1', 8, '2023-09-15', '2024-03-15', 28, 111);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Yoga Practice Batch 2', 10, '2023-09-15', '2024-03-15', 28, 111);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Yoga Practice Batch 3', 12, '2023-09-15', '2024-03-15', 28, 111);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Hair Styling Batch 1', 10, '2023-08-20', '2024-02-20', 29, 119);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Hair Styling Batch 2', 12, '2023-08-20', '2024-02-20', 29, 119);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Hair Styling Batch 3', 15, '2023-08-20', '2024-02-20', 29, 119);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Advanced Hair Styling Batch 1', 8, '2023-09-05', '2024-03-05', 30, 119);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Advanced Hair Styling Batch 2', 10, '2023-09-05', '2024-03-05', 30, 119);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Advanced Hair Styling Batch 3', 12, '2023-09-05', '2024-03-05', 30, 119);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Singing Fundamentals Batch 1', 18, '2023-08-15', '2024-02-15', 31, 122);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Singing Fundamentals Batch 2', 20, '2023-08-15', '2024-02-15', 31, 122);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Advanced Photography for Kids Batch 1', 14, '2023-09-01', '2024-03-01', 33, 124);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Advanced Photography for Kids Batch 2', 16, '2023-09-01', '2024-03-01', 33, 124);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Advanced Photography for Adults Batch 1', 12, '2023-08-30', '2024-02-29', 34, 124);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Advanced Photography for Adults Batch 2', 14, '2023-08-30', '2024-02-29', 34, 124);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Singing Batch 1', 20, '2023-08-25', '2024-02-25', 35, 127);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Singing Batch 2', 22, '2023-08-25', '2024-02-25', 35, 127);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Advanced Singing Batch 1', 18, '2023-09-05', '2024-03-05', 36, 127);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Advanced Singing Batch 2', 20, '2023-09-05', '2024-03-05', 36, 127);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Painting Basics Batch 1', 15, '2023-09-10', '2024-03-10', 43, 127);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Painting Basics Batch 2', 17, '2023-09-10', '2024-03-10', 43, 127);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Painting Batch 1', 14, '2023-09-08', '2024-03-08', 44, 127);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Painting Batch 2', 16, '2023-09-08', '2024-03-08', 44, 127);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Basic Hair Styling Batch 1', 22, '2023-09-12', '2024-03-12', 37, 134);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Basic Hair Styling Batch 2', 24, '2023-09-12', '2024-03-12', 37, 134);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Hair Styling Batch 1', 21, '2023-09-20', '2024-03-20', 38, 134);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Hair Styling Batch 2', 23, '2023-09-20', '2024-03-20', 38, 134);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Advanced Hair Styling Batch 1', 20, '2023-09-18', '2024-03-18', 30, 134);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Advanced Hair Styling Batch 2', 22, '2023-09-18', '2024-03-18', 30, 134);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Photography Basics Batch 1', 25, '2023-09-15', '2024-03-15', 45, 134);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Photography Basics Batch 2', 27, '2023-09-15', '2024-03-15', 45, 134);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Photography Batch 1', 26, '2023-09-22', '2024-03-22', 46, 134);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Photography Batch 2', 28, '2023-09-22', '2024-03-22', 46, 134);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Advanced Photography Batch 1', 30, '2023-09-25', '2024-03-25', 47, 134);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Advanced Photography Batch 2', 32, '2023-09-25', '2024-03-25', 47, 134);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Singing Fundamentals Batch 1', 35, '2023-09-05', '2024-03-05', 39, 137);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Singing Fundamentals Batch 2', 37, '2023-09-05', '2024-03-05', 39, 137);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Singing Fundamentals Batch 1', 40, '2023-09-15', '2024-03-15', 41, 139);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Singing Fundamentals Batch 2', 42, '2023-09-15', '2024-03-15', 41, 139);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Gymnastics Basics Batch 1', 25, '2023-09-10', '2024-03-10', 19, 108);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Gymnastics Basics Batch 2', 27, '2023-09-10', '2024-03-10', 19, 108);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Gymnastics Batch 1', 28, '2023-09-15', '2024-03-15', 20, 108);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Gymnastics Batch 2', 30, '2023-09-15', '2024-03-15', 20, 108);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Advanced Gymnastics Batch 1', 32, '2023-09-20', '2024-03-20', 21, 108);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Advanced Gymnastics Batch 2', 34, '2023-09-20', '2024-03-20', 21, 108);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Ribbon Dance Fundamentals Batch 1', 36, '2023-09-25', '2024-03-25', 22, 108);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Ribbon Dance Fundamentals Batch 2', 38, '2023-09-25', '2024-03-25', 22, 108);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Ribbon Dance Batch 1', 40, '2023-09-30', '2024-03-30', 23, 108);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Ribbon Dance Batch 2', 42, '2023-09-30', '2024-03-30', 23, 108);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Advanced Ribbon Dance Batch 1', 44, '2023-10-05', '2024-04-05', 24, 108);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Advanced Ribbon Dance Batch 2', 46, '2023-10-05', '2024-04-05', 24, 108);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Beginner Fitness Batch 1', 15, '2023-09-10', '2024-03-10', 25, 109);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Beginner Fitness Batch 2', 18, '2023-09-10', '2024-03-10', 25, 109);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Fitness Batch 1', 20, '2023-09-15', '2024-03-15', 26, 109);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Fitness Batch 2', 22, '2023-09-15', '2024-03-15', 26, 109);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Yoga for Beginners Batch 1', 12, '2023-09-10', '2024-03-10', 27, 111);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Yoga for Beginners Batch 2', 14, '2023-09-10', '2024-03-10', 27, 111);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Yoga Practice Batch 1', 16, '2023-09-15', '2024-03-15', 28, 111);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Yoga Practice Batch 2', 18, '2023-09-15', '2024-03-15', 28, 111);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Hair Styling Batch 1', 10, '2023-09-10', '2024-03-10', 29, 119);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Hair Styling Batch 2', 12, '2023-09-10', '2024-03-10', 29, 119);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Advanced Hair Styling Batch 1', 14, '2023-09-15', '2024-03-15', 30, 119);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Advanced Hair Styling Batch 2', 16, '2023-09-15', '2024-03-15', 30, 119);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Singing Fundamentals Batch 1', 8, '2023-09-10', '2024-03-10', 31, 122);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Singing Fundamentals Batch 2', 10, '2023-09-10', '2024-03-10', 31, 122);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Advanced Photography for Kids Batch 1', 15, '2023-09-10', '2024-03-10', 33, 124);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Advanced Photography for Kids Batch 2', 18, '2023-09-10', '2024-03-10', 33, 124);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Advanced Photography for Adults Batch 1', 20, '2023-09-15', '2024-03-15', 34, 124);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Advanced Photography for Adults Batch 2', 22, '2023-09-15', '2024-03-15', 34, 124);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Singing Batch 1', 12, '2023-09-10', '2024-03-10', 35, 127);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Singing Batch 2', 14, '2023-09-10', '2024-03-10', 35, 127);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Advanced Singing Batch 1', 16, '2023-09-15', '2024-03-15', 36, 127);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Advanced Singing Batch 2', 18, '2023-09-15', '2024-03-15', 36, 127);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Painting Basics Batch 1', 10, '2023-09-20', '2024-03-20', 43, 127);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Painting Basics Batch 2', 12, '2023-09-20', '2024-03-20', 43, 127);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Painting Batch 1', 14, '2023-09-20', '2024-03-20', 44, 127);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Painting Batch 2', 16, '2023-09-20', '2024-03-20', 44, 127);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Basic Hair Styling Batch 1', 8, '2023-09-10', '2024-03-10', 37, 134);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Basic Hair Styling Batch 2', 10, '2023-09-10', '2024-03-10', 37, 134);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Hair Styling Batch 1', 12, '2023-09-15', '2024-03-15', 38, 134);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Hair Styling Batch 2', 14, '2023-09-15', '2024-03-15', 38, 134);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Advanced Hair Styling Batch 1', 16, '2023-09-20', '2024-03-20', 45, 134);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Advanced Hair Styling Batch 2', 18, '2023-09-20', '2024-03-20', 45, 134);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Photography Basics Batch 1', 10, '2023-09-25', '2024-03-25', 46, 134);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Photography Basics Batch 2', 12, '2023-09-25', '2024-03-25', 46, 134);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Photography Batch 1', 14, '2023-09-30', '2024-03-30', 47, 134);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Photography Batch 2', 16, '2023-09-30', '2024-03-30', 47, 134);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Advanced Photography Batch 1', 18, '2023-10-05', '2024-04-05', 48, 134);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Advanced Photography Batch 2', 20, '2023-10-05', '2024-04-05', 48, 134);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Singing Fundamentals Batch 1', 8, '2023-09-10', '2024-03-10', 39, 137);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Singing Fundamentals Batch 2', 10, '2023-09-10', '2024-03-10', 39, 137);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Singing Fundamentals Batch 1', 8, '2023-09-10', '2024-03-10', 31, 122);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Singing Fundamentals Batch 2', 10, '2023-09-10', '2024-03-10', 31, 122);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Advanced Photography Batch 1', 12, '2023-09-15', '2024-03-15', 33, 122);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Advanced Photography Batch 2', 14, '2023-09-15', '2024-03-15', 33, 122);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Photography Batch 1', 16, '2023-09-20', '2024-03-20', 34, 122);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Photography Batch 2', 18, '2023-09-20', '2024-03-20', 34, 122);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Advanced Photography Batch 1', 20, '2023-09-25', '2024-03-25', 35, 122);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Advanced Photography Batch 2', 22, '2023-09-25', '2024-03-25', 35, 122);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Photography Batch 1', 24, '2023-09-30', '2024-03-30', 36, 122);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Photography Batch 2', 26, '2023-09-30', '2024-03-30', 36, 122);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Singing Batch 1', 10, '2023-09-10', '2024-03-10', 35, 127);
INSERT INTO TEMP_BATCHES (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id) VALUES (seq_temp_batches_id.NEXTVAL, 'Intermediate Singing Batch 2', 12, '2023-09-10', '2024-03-10', 35, 127);


--SELECT * FROM batches;

INSERT INTO BATCHES(batch_name, TOTAL_STUDENTS ,START_DATE, END_DATE, business_services_id, instructor_id) 
SELECT  batch_name, TOTAL_STUDENTS , TO_DATE(START_DATE, 'YYYY-MM-DD'), TO_DATE(END_DATE, 'YYYY-MM-DD'), business_services_id, instructor_id
FROM TEMP_BATCHES;



--9. membership_type
-- TRUNCATE TABLE membership_type;

INSERT INTO membership_type(membership_type_id, membership_name, description, discount_per) VALUES(seq_membership_type_id.NEXTVAL, 'Platinum', 'Platinum membership with discounts', 5);
INSERT INTO membership_type(membership_type_id, membership_name, description, discount_per) VALUES(seq_membership_type_id.NEXTVAL, 'Gold', 'Gold membership without discounts', 3);
INSERT INTO membership_type(membership_type_id, membership_name, description, discount_per) VALUES(seq_membership_type_id.NEXTVAL, 'Silver', 'Silver membership with limited benefits', 2);
INSERT INTO membership_type(membership_type_id, membership_name, description, discount_per) VALUES(seq_membership_type_id.NEXTVAL, 'Bronze', 'Bronze membership for basic access', 0);
INSERT INTO membership_type(membership_type_id, membership_name, description, discount_per) VALUES(seq_membership_type_id.NEXTVAL, 'Family', 'Family membership with discounts', 5);
INSERT INTO membership_type(membership_type_id, membership_name, description, discount_per) VALUES(seq_membership_type_id.NEXTVAL, 'Student', 'Student membership with special rates', 3);
INSERT INTO membership_type(membership_type_id, membership_name, description, discount_per) VALUES(seq_membership_type_id.NEXTVAL, 'Corporate', 'Corporate membership for businesses', 5);
INSERT INTO membership_type(membership_type_id, membership_name, description, discount_per) VALUES(seq_membership_type_id.NEXTVAL, 'VIP', 'VIP membership with exclusive benefits', 10);
INSERT INTO membership_type(membership_type_id, membership_name, description, discount_per) VALUES(seq_membership_type_id.NEXTVAL, 'Senior', 'Senior membership with senior citizen discounts', 10);
INSERT INTO membership_type(membership_type_id, membership_name, description, discount_per) VALUES(seq_membership_type_id.NEXTVAL, 'Executive', 'Executive membership for high-level access', 5);

SELECT * FROM membership_type;

--ALTER TABLE students
--ADD CONSTRAINT fk_student_mem_type_ID
--FOREIGN KEY (membership_type_id)
--REFERENCES membership_type(membership_type_id);
--
---- 11. students

CREATE TABLE temp_temp_students AS SELECT * FROM temp_students WHERE 1=2;
CREATE SEQUENCE seq_temp_students_id START WITH 1 INCREMENT BY 1;

INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Eva', 'Brown', TO_DATE('2005-06-12', 'YYYY-MM-DD'), 1, 1, 1, TO_DATE('2023-03-01', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Michael', 'Davis', TO_DATE('2006-08-25', 'YYYY-MM-DD'), 2, 2, 2, TO_DATE('2023-03-15', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Sophia', 'Harris', TO_DATE('2004-03-18', 'YYYY-MM-DD'), 3, 3, 1, TO_DATE('2023-03-02', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Ethan', 'Martinez', TO_DATE('2007-07-10', 'YYYY-MM-DD'), 4, 4, 2, TO_DATE('2023-03-10', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Olivia', 'Lopez', TO_DATE('2006-05-23', 'YYYY-MM-DD'), 5, 5, 1, TO_DATE('2023-03-05', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Liam', 'Adams', TO_DATE('2005-10-15', 'YYYY-MM-DD'), 6, 6, 2, TO_DATE('2023-03-12', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Ava', 'Hernandez', TO_DATE('2004-12-27', 'YYYY-MM-DD'), 7, 7, 1, TO_DATE('2023-03-07', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Noah', 'Garcia', TO_DATE('2007-04-03', 'YYYY-MM-DD'), 8, 8, 2, TO_DATE('2023-03-17', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Mia', 'Ramirez', TO_DATE('2005-08-09', 'YYYY-MM-DD'), 9, 9, 1, TO_DATE('2023-03-04', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Liam', 'Collins', TO_DATE('2006-09-21', 'YYYY-MM-DD'), 10, 10, 2, TO_DATE('2023-03-14', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Emma', 'Perez', TO_DATE('2006-02-14', 'YYYY-MM-DD'), 11, 11, 1, TO_DATE('2023-03-03', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Elijah', 'Rivera', TO_DATE('2005-11-30', 'YYYY-MM-DD'), 12, 12, 2, TO_DATE('2023-03-13', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Charlotte', 'Ortiz', TO_DATE('2007-01-08', 'YYYY-MM-DD'), 13, 13, 1, TO_DATE('2023-03-06', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Carter', 'Stewart', TO_DATE('2006-04-17', 'YYYY-MM-DD'), 14, 14, 2, TO_DATE('2023-03-16', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Avery', 'Morales', TO_DATE('2005-09-03', 'YYYY-MM-DD'), 15, 15, 1, TO_DATE('2023-03-05', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Jackson', 'James', TO_DATE('2007-03-22', 'YYYY-MM-DD'), 16, 16, 2, TO_DATE('2023-03-15', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Olivia', 'Robinson', TO_DATE('2006-06-18', 'YYYY-MM-DD'), 17, 17, 1, TO_DATE('2023-03-04', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Liam', 'Harris', TO_DATE('2005-07-29', 'YYYY-MM-DD'), 18, 18, 2, TO_DATE('2023-03-14', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Sophia', 'Parker', TO_DATE('2006-10-12', 'YYYY-MM-DD'), 19, 19, 1, TO_DATE('2023-03-07', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Lucas', 'Mitchell', TO_DATE('2005-08-27', 'YYYY-MM-DD'), 20, 20, 2, TO_DATE('2023-03-17', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Aiden', 'Turner', TO_DATE('2007-02-08', 'YYYY-MM-DD'), 21, 21, 1, TO_DATE('2023-03-01', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Zoe', 'Lewis', TO_DATE('2008-05-14', 'YYYY-MM-DD'), 22, 22, 2, TO_DATE('2023-03-12', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Elijah', 'Hall', TO_DATE('2006-11-20', 'YYYY-MM-DD'), 23, 23, 1, TO_DATE('2023-03-05', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Mia', 'Young', TO_DATE('2007-04-26', 'YYYY-MM-DD'), 24, 24, 2, TO_DATE('2023-03-15', 'YYYY-MM-DD'));
--
---- Student entries
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Olivia', 'Johnson', TO_DATE('2008-09-15', 'YYYY-MM-DD'), 5, 5, 3, TO_DATE('2023-04-01', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Noah', 'Thompson', TO_DATE('2009-02-22', 'YYYY-MM-DD'), 6, 6, 4, TO_DATE('2023-04-05', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Emma', 'Perez', TO_DATE('2007-07-30', 'YYYY-MM-DD'), 7, 7, 2, TO_DATE('2023-04-10', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Liam', 'Hall', TO_DATE('2010-01-12', 'YYYY-MM-DD'), 8, 8, 5, TO_DATE('2023-04-15', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Ava', 'Sanchez', TO_DATE('2009-04-28', 'YYYY-MM-DD'), 9, 9, 1, TO_DATE('2023-04-20', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Lucas', 'Brown', TO_DATE('2008-12-03', 'YYYY-MM-DD'), 10, 10, 3, TO_DATE('2023-04-25', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Mia', 'Garcia', TO_DATE('2009-06-17', 'YYYY-MM-DD'), 11, 11, 2, TO_DATE('2023-05-01', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Henry', 'Martinez', TO_DATE('2010-03-20', 'YYYY-MM-DD'), 12, 12, 4, TO_DATE('2023-05-05', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Charlotte', 'Clark', TO_DATE('2007-11-14', 'YYYY-MM-DD'), 13, 13, 2, TO_DATE('2023-05-10', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Daniel', 'Hernandez', TO_DATE('2008-05-01', 'YYYY-MM-DD'), 14, 14, 3, TO_DATE('2023-05-15', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Amelia', 'Harris', TO_DATE('2009-08-11', 'YYYY-MM-DD'), 15, 15, 1, TO_DATE('2023-05-20', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Alexander', 'Smith', TO_DATE('2008-02-27', 'YYYY-MM-DD'), 16, 16, 5, TO_DATE('2023-05-25', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Ella', 'Young', TO_DATE('2007-04-14', 'YYYY-MM-DD'), 17, 17, 2, TO_DATE('2023-06-01', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'William', 'Turner', TO_DATE('2010-02-09', 'YYYY-MM-DD'), 18, 18, 4, TO_DATE('2023-06-05', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Avery', 'Gonzalez', TO_DATE('2008-06-26', 'YYYY-MM-DD'), 19, 19, 3, TO_DATE('2023-06-10', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'James', 'Wilson', TO_DATE('2007-08-02', 'YYYY-MM-DD'), 20, 20, 5, TO_DATE('2023-06-15', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Sofia', 'Lee', TO_DATE('2009-03-07', 'YYYY-MM-DD'), 21, 21, 1, TO_DATE('2023-06-20', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Benjamin', 'Davis', TO_DATE('2008-01-19', 'YYYY-MM-DD'), 22, 22, 4, TO_DATE('2023-06-25', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Luna', 'Anderson', TO_DATE('2010-05-24', 'YYYY-MM-DD'), 23, 23, 2, TO_DATE('2023-07-01', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Jack', 'Evans', TO_DATE('2009-09-13', 'YYYY-MM-DD'), 24, 24, 3, TO_DATE('2023-07-05', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Mila', 'Thomas', TO_DATE('2007-10-28', 'YYYY-MM-DD'), 25, 25, 1, TO_DATE('2023-07-10', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Logan', 'Jackson', TO_DATE('2008-07-05', 'YYYY-MM-DD'), 26, 26, 5, TO_DATE('2023-07-15', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Harper', 'Moore', TO_DATE('2009-11-18', 'YYYY-MM-DD'), 27, 27, 4, TO_DATE('2023-07-20', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Lucas', 'Lee', TO_DATE('2010-04-03', 'YYYY-MM-DD'), 28, 28, 3, TO_DATE('2023-07-25', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Aria', 'Robinson', TO_DATE('2008-02-09', 'YYYY-MM-DD'), 29, 29, 2, TO_DATE('2023-08-01', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Jackson', 'Harris', TO_DATE('2007-03-24', 'YYYY-MM-DD'), 30, 30, 1, TO_DATE('2023-08-05', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Aurora', 'King', TO_DATE('2009-06-27', 'YYYY-MM-DD'), 31, 31, 5, TO_DATE('2023-08-10', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'William', 'Rivera', TO_DATE('2008-08-31', 'YYYY-MM-DD'), 32, 32, 4, TO_DATE('2023-08-15', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Scarlett', 'Davis', TO_DATE('2007-11-15', 'YYYY-MM-DD'), 33, 33, 2, TO_DATE('2023-08-20', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'James', 'Miller', TO_DATE('2010-01-21', 'YYYY-MM-DD'), 34, 34, 3, TO_DATE('2023-08-25', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Chloe', 'Wilson', TO_DATE('2009-04-04', 'YYYY-MM-DD'), 35, 35, 1, TO_DATE('2023-09-01', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Benjamin', 'Gonzalez', TO_DATE('2008-07-08', 'YYYY-MM-DD'), 36, 36, 5, TO_DATE('2023-09-05', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Lily', 'Collins', TO_DATE('2007-09-23', 'YYYY-MM-DD'), 37, 37, 4, TO_DATE('2023-09-10', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Oliver', 'Adams', TO_DATE('2010-05-02', 'YYYY-MM-DD'), 38, 38, 2, TO_DATE('2023-09-15', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Sophia', 'Hernandez', TO_DATE('2009-03-16', 'YYYY-MM-DD'), 39, 39, 3, TO_DATE('2023-09-20', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Ethan', 'Brown', TO_DATE('2008-01-30', 'YYYY-MM-DD'), 40, 40, 1, TO_DATE('2023-09-25', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Ava', 'Davis', TO_DATE('2010-03-07', 'YYYY-MM-DD'), 41, 41, 5, TO_DATE('2023-10-01', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Mason', 'Rodriguez', TO_DATE('2009-06-21', 'YYYY-MM-DD'), 42, 42, 4, TO_DATE('2023-10-05', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Ella', 'King', TO_DATE('2008-08-15', 'YYYY-MM-DD'), 43, 43, 3, TO_DATE('2023-10-10', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Liam', 'Wright', TO_DATE('2007-10-09', 'YYYY-MM-DD'), 44, 44, 2, TO_DATE('2023-10-15', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Aria', 'Smith', TO_DATE('2010-02-14', 'YYYY-MM-DD'), 45, 45, 1, TO_DATE('2023-10-20', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Noah', 'Anderson', TO_DATE('2009-05-29', 'YYYY-MM-DD'), 46, 46, 5, TO_DATE('2023-10-25', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Grace', 'Martinez', TO_DATE('2008-03-06', 'YYYY-MM-DD'), 47, 47, 4, TO_DATE('2023-11-01', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Landon', 'Taylor', TO_DATE('2007-01-15', 'YYYY-MM-DD'), 48, 48, 3, TO_DATE('2023-11-05', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Hazel', 'Jones', TO_DATE('2010-04-20', 'YYYY-MM-DD'), 49, 49, 2, TO_DATE('2023-11-10', 'YYYY-MM-DD'));
INSERT INTO temp_students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date) VALUES(seq_temp_students_id.NEXTVAL, 'Oliver', 'Adams', TO_DATE('2009-07-03', 'YYYY-MM-DD'), 50, 50, 1, TO_DATE('2023-11-15', 'YYYY-MM-DD'));
--
--
	   
INSERT INTO students(student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date)
SELECT 
  student_id,
  first_name, 
  last_name, 
  DATE_OF_BIRTH,
  MOD(ROWNUM - 1, 46) + 1 AS customer_id,
  MOD(ROWNUM - 1, 158) + 1 AS batch_id,
  MOD(ROWNUM - 1, 10) + 1 AS membership_type_id,
  start_date
FROM (
  SELECT ROWNUM, student_id, first_name, last_name, DATE_OF_BIRTH, start_date 
  FROM temp_STUDENTS
);


SELECT * FROM students;
      


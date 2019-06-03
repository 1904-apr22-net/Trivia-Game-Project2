insert into Category(Category) values
('Food and Drink');

insert into Question(CategoryId,Value,Question) values
(2,10,'A cocktail consisting of gin, lime juice, sugar and carbonated water is otherwise known as a what?'),
(2,10, 'In terms of food, a "flageolet" is what?'),
(2,10,'Usually fashioned into a wheel, "Raclette" is a mild cheese indigenous to which nation?'), 
(2,10,'Ascorbic Acid" is another name from what vitamin?'),
(2,10, 'Artsoppa is a soup from which country?'),
(2,10, 'The name for which Italian food item comes from the Italian word for "slipper"?'),
(2,10, 'Consisting of pieces of spiced meat and vegetables roasted on a skewer, "Souvlaki" is the national dish of which country?'),
(2,10,' In Indian cuisine, what is "Roti"?'),
(2,10,'Marinated in garlic and lemon juice, what kind of meat is found in the Greek dish "Kleftiko"?'),
(2,10,'Named after a city, what popular cocktail was created by Raffles Hotel bartender Ngiam TongBoon in 1915?');

insert into Choice(QuestionId,Correct, Choice) values
(90,0,'Bloody Mary'),
(90,0,'Harvey Wallbanger'),
(90,0,'Moscow Mule'),
(90,1,'Tom Collins'),
(91,0,'Vegetable'),
(91,0,'Nut'),
(91,1,'Bean'),
(91,0,'Fruit'),
(92,0,'Netherlands'),
(92,0,'France'),
(92,0,'Spain'),
(92,1,'Switzerland'),
(93,0,'K'),
(93,0,'A'),
(93,1,'C'),
(93,0,'D'),
(94,0,'Italy'),
(94,0,'Russia'),
(94,0,'France'),
(94,1,'Sweden'),
(95,0,'Ceviche'),
(95,0,'Cannelloni'),
(95,0,'Canape'),
(95,1,'Ciabatta'),
(96,0,'Portugal'),
(96,0,'Germany'),
(96,1,'Greece'),
(96,0,'France'),
(97,0,'Rice'),
(97,0,'Pasta'),
(97,0,'Spiced Meat'),
(97,1,'Bread'),
(98,0,'Chicken'),
(98,1,'Lamb'),
(98,0,'Pork'),
(98,0,'Beef'),
(99,0,'Washington White'),
(99,0,'London Bomber'),
(99,0,'New York Doll'),
(99,1,'Singapore Sling');

insert into Category(Category) values
('Beer Slogans');

insert into Question(CategoryId,Value,Question) values
(3,10,'Let the fin begin.'),
(3,10, 'The Champagne Of Beers'),
(3,10,' Lose the carbs, not the taste'), 
(3,10,'Hooray Beer!'),
(3,10, 'The King Of Beers'),
(3,10, 'It works every time.'),
(3,10, 'Head for the mountains.'),
(3,10,'Miles away from ordinary.'),
(3,10,'The beer that made Milwaukee famous.'),
(3,10,'Life Beckons.');

insert into Choice(QuestionId,Correct, Choice) values
(100,0,'Abbot Ale'),
(100,0,'Rockdale Light'),
(100,1,'Landshark'),
(100,0,'Corona'),
(101,0,'Fruli'),
(101,1,'Miller High Life'),
(101,0,'Guinness'),
(101,0,'Strohs'),
(102,0,'Keystone Light'),
(102,0,'Labatt Maximum Ice'),
(102,1,'Michelob Ultra'),
(102,0,'Budweiser 55'),
(103,0,'Laker Strong'),
(103,1,'Red Stripe'),
(103,0,'Fat Tire'),
(103,0,'Michelob Light'),
(104,0,'Busch'),
(104,1,'Budweiser'),
(104,0,'Molson Canadian'),
(104,0,'Miller Lite'),
(105,0,'Michelob Light'),
(105,0,'Coors Light'),
(105,1,'Colt 45'),
(105,0,'Pabst Blue Ribbon'),
(106,0,'Labatt Blue'),
(106,1,'Busch'),
(106,0,'Northern Logger Golden'),
(106,0,'Molson Ice'),
(107,0,'Red Stripe'),
(107,1,'Corona'),
(107,0,'Kraftig'),
(107,0,'Coors Banquet'),
(108,0,'Sleeman Dark'),
(108,0,'Milwaukees Best Light'),
(108,0,'Hamms Premium'),
(108,1,'Schlitz'),
(109,0,'Heineken'),
(109,0,'Tatra Beer'),
(109,0,'PBR'),
(109,1,'Becks');
-- channel
INSERT INTO channel (channel_title)
  	VALUES ('LastWeekTonight');
INSERT INTO channel (channel_title)
  	VALUES ('iJustine');
INSERT INTO channel (channel_title)
  	VALUES ('CrazyRussianHacker');
INSERT INTO channel (channel_title)
  	VALUES ('Vox');
INSERT INTO channel (channel_title)
  	VALUES ('Asata Channel');

-- category
INSERT INTO category (cat_name)
  	VALUES ('Politic');
INSERT INTO category (cat_name)
  	VALUES ('Techno');
INSERT INTO category (cat_name)
  	VALUES ('Crashtest');
INSERT INTO category (cat_name)
  	VALUES ('Discovery');
INSERT INTO category (cat_name)
  	VALUES ('Auto');

-- country
INSERT INTO country (country_name)
  	VALUES ('USA');
INSERT INTO country (country_name)
  	VALUES ('GB');
INSERT INTO country (country_name)
  	VALUES ('Russia');
INSERT INTO country (country_name)
  	VALUES ('Ukraine');
INSERT INTO country (country_name)
  	VALUES ('Chechnia');


-- video
INSERT INTO video (title, views, channel_id, category_id, country_id)
	VALUES ('The Trump Presidency: Last Week Tonight with John Oliver (HBO)',
			2418783,
			1, 1, 1);
INSERT INTO video (title, views, channel_id, category_id, country_id)
	VALUES ('2 Weeks with iPhone X',
			119180,
			2, 2, 2);
INSERT INTO video (title, views, channel_id, category_id, country_id)
	VALUES ('5 Ice Cream Gadgets put to the Test',
			817732,
			3, 3, 3);
INSERT INTO video (title, views, channel_id, category_id, country_id)
	VALUES ('Why the rise of the robots won’t mean the end of work',
			256426,
			4, 4, 4);
INSERT INTO video (title, views, channel_id, category_id, country_id)
	VALUES ('New Lada Vesta Sw Cross',
			1311334,
			5, 5, 5);

INSERT INTO video (title, views, channel_id, category_id, country_id)
	VALUES ('Breaking lada into the wall',
			987000,
			5, 3, 5);
INSERT INTO video (title, views, channel_id, category_id, country_id)
	VALUES ('how processor made?',
			442356,
			3, 5, 3);
INSERT INTO video (title, views, channel_id, category_id, country_id)
	VALUES ('Biden, what are u doing with us?',
			1311356,
			1, 1, 1);

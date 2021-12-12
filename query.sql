-- кількість відео на кожному каналі
select channel_title,count(title) from video 
	inner join channel on video.channel_id=channel.channel_id 
	group by channel_title
	
	
-- кількість відео кожної категорії	
select cat_name,count(title) from video 
	inner join category on video.category_id=category.category_id 
	group by cat_name

-- к-сть відео по країнам
select country_name,count(title) from video 
	inner join country on video.country_id=country.country_id 
	group by country_name

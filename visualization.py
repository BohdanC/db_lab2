import psycopg2
import matplotlib.pyplot as plt

username = 'Chukh_B'
password = '1234'
database = 'youtube_stat'
host = 'localhost'
port = '5432'

query_1 = '''
select cat_name,count(title) from video 
inner join category on video.category_id=category.category_id 
group by cat_name
'''
query_2 = '''
select country_name,count(title) from video 
inner join country on video.country_id=country.country_id 
group by country_name
'''

query_3 = '''
select channel_title,count(title) from video 
inner join channel on video.channel_id=channel.channel_id 
group by channel_title

'''

conn = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)
with conn:
    cur = conn.cursor()

    cur.execute(query_1)
    categor = []
    cat_count = []

    for row in cur:
        categor.append(row[0])
        cat_count.append(row[1])

    cur.execute(query_2)
    country = []
    cn_count = []

    for row in cur:
        country.append(row[0])
        cn_count.append(row[1])


    cur.execute(query_3)
    chanel = []
    ch_count = []

    for row in cur:
        chanel.append(row[0])
        ch_count.append(row[1])

    fig, (bar_ax, pie_ax, graph_ax) = plt.subplots(1, 3)

    # bar
    bar_ax.set_title('Кількість відео в певній категорії')
    bar_ax.set_xlabel('Категорія')
    bar_ax.set_ylabel('Кількість відео')
    bar = bar_ax.bar(categor, cat_count)
    bar_ax.set_xticks(range(len(categor)))
    bar_ax.set_xticklabels(categor, rotation=30)

    # pie
    pie_ax.pie(cn_count, labels=country, autopct='%1.1f%%')
    pie_ax.set_title('Кількість відео по кожній країні')

    # graph
    graph_ax.plot(chanel, ch_count, marker='o')
    graph_ax.set_xlabel('назва каналу')
    graph_ax.set_ylabel('Кількість відео')
    graph_ax.set_title('Графік залежності кількості відео від назви каналу')
    for chn, count in zip(chanel, ch_count):
        graph_ax.annotate(count, xy=(chn, count), xytext=(7, 2), textcoords='offset points')

plt.get_current_fig_manager().resize(1400, 600)
plt.show()

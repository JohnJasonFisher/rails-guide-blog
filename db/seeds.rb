Comment.delete_all
Article.delete_all
new_articles = Article.create(
    [
        {title: 'Day 1', text: 'When the cats attack.'},
        {title: 'Day 2', text: 'When the dogs attack.'},
        {title: 'Day 3', text: 'When the hamsters attack.'}
    ]
)

new_articles.each{ |new_article|
    new_article.comments.create({commenter: 'simpleton', body: 'This is a silly comment!'})

}
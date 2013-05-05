module ArticlesHelper
	def join_tags(article)
    article.tags.map { |t| t.titre }.join(", ")
  end
end

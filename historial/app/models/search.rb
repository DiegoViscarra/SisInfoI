class Search < ApplicationRecord
    def articles
        @articles ||=find_articles
    end

    private

    def find_articles
        articles = Articles.order(:id)
        articles = Articles.where("keywords like ?", "%#{title}%") if keywords.present?
        articles = Articles.where("min_fecha >= ?", min_fecha) if min_fecha.present?
        articles = Articles.where("max_fecha <= ?", max_fecha) if max_fecha.present?
        articles = Articles.where("tipo like ?", tipo) if tipo.present?
        articles = Articles.where("enfermedad like ?", enfermedad) if enfermedad.present?
    end
end

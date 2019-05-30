class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  def self.search(search)
    if search
      where(["fecha LIKE ?","%#{search}%"])
    else
      all
    end
  end
  def self.searchmax(searchmax)
    if searchmax
      where(["fecha LIKE ?","%#{searchmax}%"])
    else
      all
    end
  end
  def self.searchtitle(searchtitle)
    if searchtitle
      where(["title LIKE ?","%#{searchtitle}%"])
    else
      all
    end
  end
  def self.searchtipo(searchtipo)
    if searchtipo
      where(["tipo_consulta LIKE ?","%#{searchtipo}%"])
    else
      all
    end
  end
  def self.searchcie(searchcie)
    if searchcie
      where(["cie LIKE ?","%#{searchcie}%"])
    else
      all
    end
  end
end
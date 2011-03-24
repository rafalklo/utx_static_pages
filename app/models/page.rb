class Page < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :content
  validates_presence_of :locale
  validates_presence_of :permalink
  
  validates_uniqueness_of :permalink, :scope => :locale
  
  attr_accessible :name, :permalink, :content, :locale, :meta_keywords, :meta_description
end

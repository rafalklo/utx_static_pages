class Page < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :content
  validates_presence_of :locale
  validates_presence_of :permalink
  
  validates_uniqueness_of :permalink, :scope => :locale
end

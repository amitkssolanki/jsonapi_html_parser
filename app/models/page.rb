require 'nokogiri'
require 'open-uri'

class Page < ApplicationRecord

  validates :url, presence: true

  has_many :header_tags
  has_many :links
  
  before_create do
    # Parse page url and build necessary associations before saving the record
    doc = Nokogiri::HTML(open(url))
    
    title = doc.title

    doc.css('h1').each do |tag|
      header_tags.build(type:'H1', content: tag.content)
    end

    doc.css('h2').each do |tag|
      header_tags.build(type:'H2', content: tag.content)
    end

    doc.css('h3').each do |tag|
      header_tags.build(type:'H3', content: tag.content)
    end
    
    doc.css('a').each do |link|
      links.build(url: link['href'], content: link.text)
    end    
  end
end

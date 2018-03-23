require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    index_page = Nokogiri::HTML(open(index_url))
    students = []
    index_page.css("div.roster_cards_container").each do |roster_card|
      roster_card.css(".student_card a").each do |student|
  end

  def self.scrape_profile_page(profile_url)

  end

end

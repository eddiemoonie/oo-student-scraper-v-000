require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    index_page = Nokogiri::HTML(open(index_url))
    students = []
    index_page.css("div.roster_cards_container").each do |roster_card|
      roster_card.css(".student_card a").each do |student|
        student_name = student.css(".student-name").text
        student_location = student.css(".student-location").text
        student_prof_link = "#{student.attr('href')}"
        students << {name: student_name, location: student_location, profile_url: student_prof_link}
      end
    end
  end

  def self.scrape_profile_page(profile_url)

  end

end

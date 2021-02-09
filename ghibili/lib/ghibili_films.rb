require 'faraday'
require 'json'
require 'pry'
require './lib/film'
require './lib/ghibili_service'
require './lib/person'

class Ghibili
  def show_all_films
    parsed = GhibiliService.new.all_films
    films = parsed.map {|film| Film.new(film)}

    films.each do |film|
      puts film.title
    end
  end

  def show_all_people
    parsed = GhibiliService.new.all_people

    people = parsed.map do |people|
      Person.new(people)
    end

    people.each do |person|
      puts person.name
      puts "films they appear in: "
      person.films.each {|film| puts film.title}
      puts "========================="
    end
  end
end

Ghibili.new.show_all_people
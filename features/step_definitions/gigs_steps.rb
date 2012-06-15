# encoding: utf-8

Dado /^que estou na página crear una nova gig$/ do
  puts page.body
  visit '/gigs/new'
end

Dado /^preencho "(.*?)" com "(.*?)"$/ do |campo, valor|
  fill_in campo, :with => valor
end

Dado /^pressiono "(.*?)"$/ do |botao|
  click_button botao
end

Então /^eu deveria ver "(.*?)"$/ do |resultado|
  page.should have_content(resultado)
end

Dado /^que os seguintes gigs existem:$/ do |table|
  table.hashes.each do |attributes|
      Gig.create!(attributes)
  end
end

Dado /^que estou na página inicial$/ do
  visit '/'
end

Quando /^eu clico "(.*?)"$/ do |link|
  click_link link
end

Então /^o rss deveria ser:$/ do |text|
  rss = page.body.gsub(/\n|\s|\<!DOCTYPE.*\>|\<\/?html\>|<\/?body\>/, '')
  rss.should == text.gsub(/[\n\s]/, '')
end
